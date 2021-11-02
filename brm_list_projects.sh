#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  List projects in workspace
# @param  None
# @retval Success return 0, else return 127 | 128
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_list_projects
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing BRM workspace | project brm file doesn't exist
#    # return 127 | 128
# fi
#
function __brm_list_projects {
    if [[ ! -d "${BUILD_ROOT_DIR}/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BUILD_ROOT_DIR}/"
        return 127
    fi
    cd "${BUILD_ROOT_DIR}/"
    for brm_file in $(find . -name "*.brm")
    do
        pro_name="$(basename "$(dirname "$brm_file")")"
        pro_brm_file="${BUILD_ROOT_DIR}/${pro_name}/${pro_name}.brm"
        if [[ ! -e "${pro_brm_file}" ]]; then
            printf "%s\n" "[brm] expected file: ${pro_brm_file}"
            return 128
        fi
        printf "\n%s\n" "[brm] Setup workspace for project #${pro_name}, run:"
        printf "%s\n\n" "source ${pro_brm_file}"
    done
    return 0
}
