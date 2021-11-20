#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0.0
# @date    Sun Nov 21 00:40:40 CET 2021
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
    local PROJECT_NAME=$1
    if [[ ! -n "${PROJECT_NAME}" ]]; then
        printf "%s\n" "[brm] missing project name"
        return 127
    fi
    local PRO_DIR="${BUILD_ROOT_DIR}/${PROJECT_NAME}"
    if [[ -d "${PRO_DIR}" ]]; then
        printf "%s\n" "[brm] directory: ${PRO_DIR} exists"
        return 128
    fi
    printf "%s\n" "[brm] creating dir: ${PRO_DIR}"
    mkdir ${PRO_DIR}
    printf "%s\n" "[brm] change dir: ${PRO_DIR}"
    cd ${PRO_DIR}
    local TIME=$(date)
    echo "# ${pro_name} - ${TIME}" > "${PRO_DIR}/${PROJECT_NAME}.brm"
    echo "export BRM_DIR=${PRO_DIR}" >> "${PRO_DIR}/${PROJECT_NAME}.brm"
    local STATUS
    __brm_clone_project
    STATUS=$?
    if [[ $STATUS -ne 0 ]]; then
        return 129
    fi
    return 0
}
