#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Start buildroot menu configuraiton
# @param  None
# @retval Success return 0, else return 127 | 128
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_menu_configuration
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing make tool | project srtucture doesn't exist
#    # return 127 | 128 
# fi
#
function __brm_menu_configuration {
    local make_path=$(which make)
    if [[ ! -e ${make_path} ]]; then
        printf "%s\n" "[brm] check build automation tool: make"
        return 127
    fi
    if [[ ! -d "${BRM_DIR}/buildroot/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BRM_DIR}/buildroot"
        return 128
    fi
    cd "${BRM_DIR}/buildroot/"
    make menuconfig
    cd ..
    return 0
}
