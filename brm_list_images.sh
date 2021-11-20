#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0.0
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

#
# @brief  List build output images
# @param  None
# @retval Success return 0, else return 127
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
#    # return 0
# else
#    # false
#    # project image directory doesn't exist
#    # return 127
# fi
#
function __brm_list_images {
    local PROJECT_IMAGE_DIR="${BRM_DIR}/buildroot/output/images" 
    if [[ ! -d "${PROJECT_IMAGE_DIR}" ]]; then
        printf "%s\n" "[brm] expected directory: ${PROJECT_IMAGE_DIR}"
        return 127
    fi
    ls -all "${PROJECT_IMAGE_DIR}"
    return 0
}
