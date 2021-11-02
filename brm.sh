#!/usr/bin/bash
#
# @brief   Build root manager
# @version ver.1.0.0
# @date    16.10.2021.
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
# local option="init" STATUS
# brm_handler $option
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
    local option=$1 number_of_arguments=$# status
    if [[ "$number_of_arguments" -ne 1 || ! -n "${option}" ]]; then
        __brm_build_root_helper
        return 127
    fi
    status=128
    case $option in
        "init")
            printf "%s: " "[brm] provide project name"
            read pro_name
            __brm_setup_project $pro_name
            status=$?
            ;;
        "list")
            __brm_list_projects
            status=$?
            ;;
        "conf")
            __brm_list_configurations
            status=$?
            ;;
        "menu")
            __brm_menu_configuration
            status=$?
            ;;
        "build")
            printf "%s: " "[brm] select target configuration"
            read configuration
            __brm_build_project $configuration
            status=$?
            ;;
        "images")
            __brm_list_images
            status=$?
            ;;
        "clean")
            __brm_clean_project
            status=$?
            ;;
        *)
            __brm_build_root_helper
            ;;
    esac
    return $status
}

brm_handler $1
STATUS=$?
exit $STATUS
