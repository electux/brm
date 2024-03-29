#!/usr/bin/bash
#
# @brief   Build root manager (brm)
# @version ver.1.0
# @date    Sun Nov 21 00:40:40 CET 2021
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
    local OUT_DIR="${BRM_DIR}/buildroot/output"
    if [[ ! -d "${OUT_DIR}" ]]; then
        printf "%s\n" "[brm] expected directory: project_dir/buildroot/output"
        printf "%s\n" "[brm] check directory: ${OUT_DIR}"
        return 127
    fi
    rm -rf "${OUT_DIR}/target"
    find "${OUT_DIR}/" -name ".stamp_target_installed" | xargs rm -rf
    return 0
}
