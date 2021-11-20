#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0.0
# @date    Sun Nov 21 00:40:40 CET 2021
# @company None, free software to use 2021
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

BUILD_ROOT_REPO="https://github.com/buildroot/buildroot.git"
BUILD_ROOT_DIR="/data/dev/build_root"

.   brm_clone_project.sh
.   brm_list_projects.sh
.   brm_list_configurations.sh
.   brm_menu_configuration.sh
.   brm_build_project.sh
.   brm_list_images.sh
.   brm_clone_project.sh
.   brm_setup_project.sh

#
# @brief  Print help info for options
# @param  None
# @retval None
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# __brm_build_root_helper
#
function __brm_build_root_helper {
    read -r -d '' END_HELP_TXT <<- END_HELP_TXT
### Create and setup build root project structure
    init

### List projects in BRM workspace
    list

### List prepared configurations in project
    conf

### Open menu configuration for project
    menu

### Start build process for selected configuration
    build

### List build root output images from project
    images

### Clean up build outputs for project
    clean
END_HELP_TXT
    echo "$END_HELP_TXT"
}

#
# @brief  Buildroot manager handler
# @param  Value required option
# @retval Success return 0, else return 127
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# local OPTION="init" STATUS
# brm_handler $OPTION
# STATUS=$?
#
# if [ $STATUS -eq 0 ]; then
#    # true
#    # notify admin | user success opearation
#    # exit 0
# else
#    # false
#    # missing argument | failed operation
#    # exit $STATUS
# fi
#
function brm_handler {
    local OPTION=$1 NUMBER_OF_ARGUMENTS=$# STATUS
    if [[ "$NUMBER_OF_ARGUMENTS" -ne 1 || ! -n "${OPTION}" ]]; then
        __brm_build_root_helper
        return 127
    fi
    STATUS=128
    case $OPTION in
        "init")
            printf "%s: " "[brm] provide project name"
            read PRO_NAME
            __brm_setup_project $PRO_NAME
            STATUS=$?
            ;;
        "list")
            __brm_list_projects
            STATUS=$?
            ;;
        "conf")
            __brm_list_configurations
            STATUS=$?
            ;;
        "menu")
            __brm_menu_configuration
            STATUS=$?
            ;;
        "build")
            printf "%s: " "[brm] select target configuration"
            read CONFIGURATION
            __brm_build_project $CONFIGURATION
            STATUS=$?
            ;;
        "images")
            __brm_list_images
            STATUS=$?
            ;;
        "clean")
            __brm_clean_project
            STATUS=$?
            ;;
        *)
            __brm_build_root_helper
            ;;
    esac
    return $STATUS
}

brm_handler $1
BRM_STATUS=$?
exit $BRM_STATUS
