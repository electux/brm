#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  Build project configuration
# @param  Value required CONFIGURAITON
# @retval Success return 0, else return 127 | 128 | 129
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local CONFIGURAITON="aarch64_efi_defconfig" STATUS
# __brm_build_project "$CONFIGURAITON"
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return 0
# else
#    # false
#    # missing argument | tool | project dir doesn't exist
#    # return 127 | 128 | 129
# fi
#
function __brm_build_project {
    local BUILD_CONFIGURATION=$1
    if [[ ! -n "${BUILD_CONFIGURATION}" ]]; then
        printf "%s\n" "[brm] missing target configuration"
        return 127
    fi
    local MAKE_PATH=$(which make)
    if [[ ! -e ${MAKE_PATH} ]]; then
        printf "%s\n" "[brm] check build automation tool: make"
        return 128
    fi
    if [[ ! -d "${BRM_DIR}/buildroot/" ]]; then
        printf "%s\n" "[brm] expected directory: ${BRM_DIR}/buildroot"
        return 129
    fi
    cd "${BRM_DIR}/buildroot/"
    make ${BUILD_CONFIGURATION}
    make
    cd ..
    return 0
}
