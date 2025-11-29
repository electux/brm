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
# @brief  Start buildroot menu configuraiton
# @param  None
# @retval Success return 0 (SUCCESS), else return 1 (NOT_SUCCESS)
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
#    # return $SUCCESS
# else
#    # false
#    # missing make tool | project srtucture doesn't exist
#    # return $NOT_SUCCESS
# fi
#
function __brm_menu_configuration {
    local MAKE_PATH=$(which make)
    if [[ ! -e ${MAKE_PATH} ]]; then
        printf "%s\n" "[brm] check build automation tool: make"
        return $NOT_SUCCESS
    fi
    if [[ ! -d "${BRM_DIR}/buildroot/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BRM_DIR}/buildroot"
        return $NOT_SUCCESS
    fi
    cd "${BRM_DIR}/buildroot/"
    make menuconfig
    cd ..
    return $SUCCESS
}
