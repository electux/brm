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
# @brief  List build output images
# @param  None
# @retval Success return 0 (SUCCESS), else return 1 (NOT_SUCCESS)
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local STATUS
# __brm_list_images
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success operation
#    # return $SUCCESS
# else
#    # false
#    # project image directory doesn't exist
#    # return $NOT_SUCCESS
# fi
#
function __brm_list_images {
    local PROJECT_IMAGE_DIR="${BRM_DIR}/buildroot/output/images" 
    if [[ ! -d "${PROJECT_IMAGE_DIR}" ]]; then
        printf "%s\n" "[brm] expected directory: ${PROJECT_IMAGE_DIR}"
        return $NOT_SUCCESS
    fi
    ls -all "${PROJECT_IMAGE_DIR}"
    return $SUCCESS
}
