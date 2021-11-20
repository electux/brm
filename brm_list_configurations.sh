#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0.0
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  List supported buildroot configurations
# @param  None
# @retval Success return 0, else return 127 | 128
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_list_configurations
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing make tool | project structure doesn't exist
#    # return 127 | 128
# fi
#
function __brm_list_configurations {
    local MAKE_PATH=$(which make)
    if [[ ! -e ${MAKE_PATH} ]]; then
        printf "%s\n" "[brm] check build automation tool: make"
        return 127
    fi
    if [[ ! -d "${BRM_DIR}/buildroot/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BRM_DIR}/buildroot/"
        return 128
    fi
    cd "${BRM_DIR}/buildroot/"
    make list-defconfigs
    cd ..
    return 0
}
