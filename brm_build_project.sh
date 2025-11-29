#!/usr/bin/bash
#
# @brief   Build root manager (brm)
# @version ver.1.1
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021 - 2026
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

.   brm_status.sh

#
# @brief  Build project configuration
# @param  Value required CONFIGURAITON
# @retval Success return 0 (SUCCESS), else return 1 (NOT_SUCCESS)
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
#    # return $SUCCESS
# else
#    # false
#    # missing argument | tool | project dir doesn't exist
#    # return $NOT_SUCCESS
# fi
#
function __brm_build_project {
    local BUILD_CONFIGURATION=$1
    if [[ ! -n "${BUILD_CONFIGURATION}" ]]; then
        printf "%s\n" "[brm] missing target configuration"
        return $NOT_SUCCESS
    fi
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
    make ${BUILD_CONFIGURATION}
    make
    cd ..
    return $SUCCESS
}
