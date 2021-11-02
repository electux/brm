#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Clean project structure
# @param  None
# @retval Success return 0, else return 127
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_clean_project
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # project structure doesn't exist
#    # return 127
# fi
#
function __brm_clean_project {
    local out_dir="${BRM_DIR}/buildroot/output"
    if [[ ! -d "${out_dir}" ]]; then
        printf "%s\n" "[brm] expected directory: project_dir/buildroot/output"
        printf "%s\n" "[brm] check directory: ${out_dir}"
        return 127
    fi
    rm -rf "${out_dir}/target"
    find "${out_dir}/" -name ".stamp_target_installed" | xargs rm -rf
    return 0
}
