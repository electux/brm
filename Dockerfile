# Copyright 2021 Vladimir Roncevic <elektron.ronca@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM debian:10
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -yq --no-install-recommends \
    tree \
    htop \
    git \
    python \
    python-pip \
    python-wheel \
    python3 \
    python3-pip \
    python3-wheel \
    libyaml-dev \
    binutils \
    make \
    cmake \
    csh \ 
    g++ \
    sed \
    gawk \
    autoconf \
    automake \
    autotools-dev

RUN mkdir -p /data/dev/build_root/
COPY brm.sh /data/dev/build_root/
COPY brm_list_projects.sh /data/dev/build_root/
COPY brm_setup_project.sh /data/dev/build_root/
COPY brm_clone_project.sh /data/dev/build_root/
COPY brm_list_configurations.sh /data/dev/build_root/
COPY brm_menu_configuration.sh /data/dev/build_root/
COPY brm_build_project.sh /data/dev/build_root/
COPY brm_list_images.sh /data/dev/build_root/
COPY brm_clean_project.sh /data/dev/build_root/
