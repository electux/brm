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
# @brief  Clone git project structure
# @param  None
# @retval Success return 0 (SUCCESS), else return 1 (NOT_SUCCESS)
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_clone_project
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return $SUCCESS
# else
#    # false
#    # missing git tool
#    # return $NOT_SUCCESS
# fi
#
function __brm_clone_project {
    local GIT_PATH=$(which git)
    if [[ ! -e ${GIT_PATH} ]]; then
        printf "%s\n" "[brm] check revision tool: git"
        return $NOT_SUCCESS
    fi
    git clone "${BUILD_ROOT_REPO}"
    return $SUCCESS
}
