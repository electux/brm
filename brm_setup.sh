#!/usr/bin/bash
#
# @brief   Build root manager (brm)
# @version ver.1.1
# @date    Sat Nov 29 05:59:12 PM CET 2025
# @company None, free software to use 2021 - 2026
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#

# Build root repository and directory
BUILD_ROOT_REPO="https://github.com/buildroot/buildroot.git"
BUILD_ROOT_DIR="/data/dev/build_root"

# Return, check states
SUCCESS=0
NOT_SUCCESS=1
