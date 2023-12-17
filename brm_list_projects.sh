#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0
# @date    Sun Nov 21 00:40:40 CET 2021
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
    for BRM_FILE in $(find . -name "*.brm")
    do
        PRO_NAME="$(basename "$(dirname "$BRM_FILE")")"
        PRO_BRM_FILE="${BUILD_ROOT_DIR}/${PRO_NAME}/${PRO_NAME}.brm"
        if [[ ! -e "${PRO_BRM_FILE}" ]]; then
            printf "%s\n" "[brm] expected file: ${PRO_BRM_FILE}"
            return 128
        fi
        printf "\n%s\n" "[brm] setup workspace for project #${PRO_NAME}, run:"
        printf "%s\n\n" "source ${PRO_BRM_FILE}"
    done
    return 0
}
