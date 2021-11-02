#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Setup project structure
# @param  Value required project name
# @retval Success return 0, else return 127 | 128 | 129
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local project_name="pro_on_buildroot" STATUS
# __brm_setup_project "$project_name"
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing argument | project dir doesn't exist | failed to clone
#    # return 127 | 128 | 129
# fi
#
function __brm_setup_project {
    local project_name=$1
    if [[ ! -n "${project_name}" ]]; then
        printf "%s\n" "[brm] missing project name"
        return 127
    fi
    local pro_dir="${BUILD_ROOT_DIR}/${project_name}"
    if [[ -d "${pro_dir}" ]]; then
        printf "%s\n" "[brm] directory: ${pro_dir} exists"
        return 128
    fi
    printf "%s\n" "[brm] creating dir: ${pro_dir}"
    mkdir ${pro_dir}
    printf "%s\n" "[brm] change dir: ${pro_dir}"
    cd ${pro_dir}
    local time=$(date)
    echo "# ${pro_name} - ${time}" > "${pro_dir}/${project_name}.brm"
    echo "export BRM_DIR=${pro_dir}" >> "${pro_dir}/${project_name}.brm"
    local status
    __brm_clone_project
    status=$?
    if [[ $status -ne 0 ]]; then
        return 129
    fi
    return 0
}
