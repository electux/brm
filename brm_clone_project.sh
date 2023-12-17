#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Clone git project structure
# @param  None
# @retval Success return 0, else return 127
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
#    # return 0
# else
#    # false
#    # missing git tool
#    # return 127
# fi
#
function __brm_clone_project {
    local GIT_PATH=$(which git)
    if [[ ! -e ${GIT_PATH} ]]; then
        printf "%s\n" "[brm] check revision tool: git"
        return 127
    fi
    git clone "${BUILD_ROOT_REPO}"
    return 0
}
