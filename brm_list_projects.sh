#!/usr/bin/bash
#
# @brief   Build root manager (brm)
# @version ver.1.1
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021 - 2026
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

.   brm_setup.sh

#
# @brief  List projects in workspace
# @param  None
# @retval Success return 0 (SUCCESS), else return 1 (NOT_SUCCESS)
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
#    # return $SUCCESS
# else
#    # false
#    # missing BRM workspace | project brm file doesn't exist
#    # return $NOT_SUCCESS
# fi
#
function __brm_list_projects {
    if [[ ! -d "${BUILD_ROOT_DIR}/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BUILD_ROOT_DIR}/"
        return $NOT_SUCCESS
    fi
    cd "${BUILD_ROOT_DIR}/"
    for BRM_FILE in $(find . -name "*.brm")
    do
        PRO_NAME="$(basename "$(dirname "$BRM_FILE")")"
        PRO_BRM_FILE="${BUILD_ROOT_DIR}/${PRO_NAME}/${PRO_NAME}.brm"
        if [[ ! -e "${PRO_BRM_FILE}" ]]; then
            printf "%s\n" "[brm] expected file: ${PRO_BRM_FILE}"
            return $NOT_SUCCESS
        fi
        printf "\n%s\n" "[brm] setup workspace for project #${PRO_NAME}, run:"
        printf "%s\n\n" "source ${PRO_BRM_FILE}"
    done
    return $SUCCESS
}
