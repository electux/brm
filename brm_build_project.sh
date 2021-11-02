#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Build project configuration
# @param  Value required configuraiton
# @retval Success return 0, else return 127 | 128 | 129
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local configuraiton="aarch64_efi_defconfig" STATUS
# __brm_build_project "$configuraiton"
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing argument | tool | project dir doesn't exist
#    # return 127 | 128 | 129
# fi
#
function __brm_build_project {
    local build_configuration=$1
    if [[ ! -n "${build_configuration}" ]]; then
        printf "%s\n" "[brm] missing target configuration"
        return 127
    fi
    local make_path=$(which make)
    if [[ ! -e ${make_path} ]]; then
        printf "%s\n" "[brm] check build automation tool: make"
        return 128
    fi
    local current_dir=$(pwd)
    if [[ ! -d "${BRM_DIR}/buildroot/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BRM_DIR}/buildroot"
        return 129
    fi
    cd "${BRM_DIR}/buildroot/"
    make ${build_configuration}
    make
    cd ..
    return 0
}
