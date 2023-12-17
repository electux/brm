brm
---

**brm** is shell tool for generating `Buildroot <https://en.wikipedia.org/wiki/Buildroot>`_.

Developed in `bash <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>`_ code: **100%**.

|GitHub shell checker|

.. |GitHub shell checker| image:: https://github.com/vroncevic/brm/actions/workflows/brm_shell_checker.yml/badge.svg
   :target: https://github.com/vroncevic/brm/actions/workflows/brm_shell_checker.yml

The README is used to introduce the tool and provide instructions on
how to install the tool, any machine dependencies it may have and any
other information that should be provided before the tool is installed.

|GitHub issues| |Documentation Status| |GitHub contributors|

.. |GitHub issues| image:: https://img.shields.io/github/issues/electux/brm.svg
   :target: https://github.com/electux/brm/issues

.. |GitHub contributors| image:: https://img.shields.io/github/contributors/electux/brm.svg
   :target: https://github.com/electux/brm/graphs/contributors

.. |Documentation Status| image:: https://readthedocs.org/projects/brm/badge/?version=latest
   :target: https://buildrootmanager.readthedocs.io/projects/brm/en/latest/?badge=latest

.. toctree::
    :hidden:

    self

Installation
------------

|Debian Linux OS|

.. |Debian Linux OS| image:: https://raw.githubusercontent.com/electux/brm/dev/docs/debtux.png
   :target: https://www.debian.org

Navigate to release `page`_ download and extract release archive.

.. _page: https://github.com/electux/brm/releases

To install **brm** type the following

.. code-block:: bash

    tar xvzf brm-x.y.tar.gz
    cd brm-x.y
    cp -R *.sh   /data/dev/build_root/

Or You can use Docker to create image/container.

Dependencies
------------

**brm** requires next modules and libraries

* sh_util `https://github.com/electux/sh_util <https://github.com/electux/sh_util>`_

Usage
-----

.. code-block:: bash

    # create project setup
    ./brm.sh init
    [brm] provide project name: microhil
    [brm] creating dir: /data/dev/build_root/microhil
    [brm] change dir: /data/dev/build_root/microhil
    Cloning into 'buildroot'...
    remote: Enumerating objects: 438618, done.
    remote: Total 438618 (delta 0), reused 0 (delta 0), pack-reused 438618
    Receiving objects: 100% (438618/438618), 134.63 MiB | 3.46 MiB/s, done.
    Resolving deltas: 100% (292220/292220), done.
    
    # jump to project directory and source
    cd microhil/
    source microhil.brm
    
    # list projects
    ./brm.sh list
    
    [brm] Setup workspace for project #microhil, run:
    source /data/dev/build_root/microhil/microhil.brm
    
    # list configuraitons
    ./brm.sh conf
    Built-in configs:      
      aarch64_efi_defconfig                          - Build for aarch64_efi
      acmesystems_acqua_a5_256mb_defconfig           - Build for acmesystems_acqua_a5_256mb
      acmesystems_acqua_a5_512mb_defconfig           - Build for acmesystems_acqua_a5_512mb
      acmesystems_aria_g25_128mb_defconfig           - Build for acmesystems_aria_g25_128mb
      acmesystems_aria_g25_256mb_defconfig           - Build for acmesystems_aria_g25_256mb
      acmesystems_arietta_g25_128mb_defconfig        - Build for acmesystems_arietta_g25_128mb
      acmesystems_arietta_g25_256mb_defconfig        - Build for acmesystems_arietta_g25_256mb
      amarula_a64_relic_defconfig                    - Build for amarula_a64_relic
      amarula_vyasa_rk3288_defconfig                 - Build for amarula_vyasa_rk3288
      andes_ae3xx_defconfig                          - Build for andes_ae3xx
      arcturus_ucls1012a_defconfig                   - Build for arcturus_ucls1012a
      arcturus_ucp1020_defconfig                     - Build for arcturus_ucp1020
      armadeus_apf27_defconfig                       - Build for armadeus_apf27
      armadeus_apf28_defconfig                       - Build for armadeus_apf28
      armadeus_apf51_defconfig                       - Build for armadeus_apf51
      arm_foundationv8_defconfig                     - Build for arm_foundationv8
      arm_juno_defconfig                             - Build for arm_juno
      asus_tinker_rk3288_defconfig                   - Build for asus_tinker_rk3288
      at91sam9260eknf_defconfig                      - Build for at91sam9260eknf
      at91sam9g20dfc_defconfig                       - Build for at91sam9g20dfc
      at91sam9g45m10ek_defconfig                     - Build for at91sam9g45m10ek
      at91sam9rlek_defconfig                         - Build for at91sam9rlek
      at91sam9x5ek_defconfig                         - Build for at91sam9x5ek
      at91sam9x5ek_dev_defconfig                     - Build for at91sam9x5ek_dev
      at91sam9x5ek_mmc_defconfig                     - Build for at91sam9x5ek_mmc
      at91sam9x5ek_mmc_dev_defconfig                 - Build for at91sam9x5ek_mmc_dev
      atmel_sama5d27_som1_ek_mmc_dev_defconfig       - Build for atmel_sama5d27_som1_ek_mmc_dev
      atmel_sama5d2_xplained_mmc_defconfig           - Build for atmel_sama5d2_xplained_mmc
      atmel_sama5d2_xplained_mmc_dev_defconfig       - Build for atmel_sama5d2_xplained_mmc_dev
      atmel_sama5d3xek_defconfig                     - Build for atmel_sama5d3xek
      atmel_sama5d3_xplained_defconfig               - Build for atmel_sama5d3_xplained
      atmel_sama5d3_xplained_dev_defconfig           - Build for atmel_sama5d3_xplained_dev
      atmel_sama5d3_xplained_mmc_defconfig           - Build for atmel_sama5d3_xplained_mmc
      atmel_sama5d3_xplained_mmc_dev_defconfig       - Build for atmel_sama5d3_xplained_mmc_dev
      atmel_sama5d4_xplained_defconfig               - Build for atmel_sama5d4_xplained
      atmel_sama5d4_xplained_dev_defconfig           - Build for atmel_sama5d4_xplained_dev
      atmel_sama5d4_xplained_mmc_defconfig           - Build for atmel_sama5d4_xplained_mmc
      atmel_sama5d4_xplained_mmc_dev_defconfig       - Build for atmel_sama5d4_xplained_mmc_dev
      avenger96_defconfig                            - Build for avenger96
      bananapi_m1_defconfig                          - Build for bananapi_m1
      bananapi_m1_plus_defconfig                     - Build for bananapi_m1_plus
      bananapi_m2_plus_defconfig                     - Build for bananapi_m2_plus
      bananapi_m2_ultra_defconfig                    - Build for bananapi_m2_ultra
      bananapi_m2_zero_defconfig                     - Build for bananapi_m2_zero
      bananapi_m64_defconfig                         - Build for bananapi_m64
      bananapro_defconfig                            - Build for bananapro
      beagleboardx15_defconfig                       - Build for beagleboardx15
      beagleboneai_defconfig                         - Build for beagleboneai
      beaglebone_defconfig                           - Build for beaglebone
      beaglebone_qt5_defconfig                       - Build for beaglebone_qt5
      beaglev_defconfig                              - Build for beaglev
      beelink_gs1_defconfig                          - Build for beelink_gs1
      chromebook_elm_defconfig                       - Build for chromebook_elm
      chromebook_snow_defconfig                      - Build for chromebook_snow
      ci20_defconfig                                 - Build for ci20
      csky_gx6605s_defconfig                         - Build for csky_gx6605s
      cubieboard2_defconfig                          - Build for cubieboard2
      engicam_imx6qdl_icore_defconfig                - Build for engicam_imx6qdl_icore
      engicam_imx6qdl_icore_qt5_defconfig            - Build for engicam_imx6qdl_icore_qt5
      engicam_imx6qdl_icore_rqs_defconfig            - Build for engicam_imx6qdl_icore_rqs
      engicam_imx6ul_geam_defconfig                  - Build for engicam_imx6ul_geam
      engicam_imx6ul_isiot_defconfig                 - Build for engicam_imx6ul_isiot
      freescale_imx28evk_defconfig                   - Build for freescale_imx28evk
      freescale_imx6dlsabreauto_defconfig            - Build for freescale_imx6dlsabreauto
      freescale_imx6dlsabresd_defconfig              - Build for freescale_imx6dlsabresd
      freescale_imx6qsabreauto_defconfig             - Build for freescale_imx6qsabreauto
      freescale_imx6qsabresd_defconfig               - Build for freescale_imx6qsabresd
      freescale_imx6sxsabresd_defconfig              - Build for freescale_imx6sxsabresd
      freescale_imx6ullevk_defconfig                 - Build for freescale_imx6ullevk
      freescale_imx7dsabresd_defconfig               - Build for freescale_imx7dsabresd
      freescale_imx8mmevk_defconfig                  - Build for freescale_imx8mmevk
      freescale_imx8mnevk_defconfig                  - Build for freescale_imx8mnevk
      freescale_imx8mpevk_defconfig                  - Build for freescale_imx8mpevk
      freescale_imx8mqevk_defconfig                  - Build for freescale_imx8mqevk
      freescale_imx8qmmek_defconfig                  - Build for freescale_imx8qmmek
      freescale_imx8qxpmek_defconfig                 - Build for freescale_imx8qxpmek
      freescale_p1025twr_defconfig                   - Build for freescale_p1025twr
      freescale_t1040d4rdb_defconfig                 - Build for freescale_t1040d4rdb
      freescale_t2080_qds_rdb_defconfig              - Build for freescale_t2080_qds_rdb
      friendlyarm_nanopc_t4_defconfig                - Build for friendlyarm_nanopc_t4
      friendlyarm_nanopi_a64_defconfig               - Build for friendlyarm_nanopi_a64
      friendlyarm_nanopi_m1_defconfig                - Build for friendlyarm_nanopi_m1
      friendlyarm_nanopi_m1_plus_defconfig           - Build for friendlyarm_nanopi_m1_plus
      friendlyarm_nanopi_m4_defconfig                - Build for friendlyarm_nanopi_m4
      friendlyarm_nanopi_neo2_defconfig              - Build for friendlyarm_nanopi_neo2
      friendlyarm_nanopi_neo4_defconfig              - Build for friendlyarm_nanopi_neo4
      friendlyarm_nanopi_neo_defconfig               - Build for friendlyarm_nanopi_neo
      friendlyarm_nanopi_neo_plus2_defconfig         - Build for friendlyarm_nanopi_neo_plus2
      friendlyarm_nanopi_r1_defconfig                - Build for friendlyarm_nanopi_r1
      galileo_defconfig                              - Build for galileo
      globalscale_espressobin_defconfig              - Build for globalscale_espressobin
      grinn_chiliboard_defconfig                     - Build for grinn_chiliboard
      grinn_liteboard_defconfig                      - Build for grinn_liteboard
      hifive_unleashed_defconfig                     - Build for hifive_unleashed
      imx23evk_defconfig                             - Build for imx23evk
      imx6-sabreauto_defconfig                       - Build for imx6-sabreauto
      imx6-sabresd_defconfig                         - Build for imx6-sabresd
      imx6-sabresd_qt5_defconfig                     - Build for imx6-sabresd_qt5
      imx6slevk_defconfig                            - Build for imx6slevk
      imx6sx-sdb_defconfig                           - Build for imx6sx-sdb
      imx6ulevk_defconfig                            - Build for imx6ulevk
      imx6ullevk_defconfig                           - Build for imx6ullevk
      imx6ulpico_defconfig                           - Build for imx6ulpico
      imx7dpico_defconfig                            - Build for imx7dpico
      imx7d-sdb_defconfig                            - Build for imx7d-sdb
      imx8mmpico_defconfig                           - Build for imx8mmpico
      imx8mpico_defconfig                            - Build for imx8mpico
      imx8mqevk_defconfig                            - Build for imx8mqevk
      kontron_pitx_imx8m_defconfig                   - Build for kontron_pitx_imx8m
      kontron_smarc_sal28_defconfig                  - Build for kontron_smarc_sal28
      lafrite_defconfig                              - Build for lafrite
      lego_ev3_defconfig                             - Build for lego_ev3
      licheepi_zero_defconfig                        - Build for licheepi_zero
      linksprite_pcduino_defconfig                   - Build for linksprite_pcduino
      microchip_sam9x60ek_mmc_defconfig              - Build for microchip_sam9x60ek_mmc
      microchip_sam9x60ek_mmc_dev_defconfig          - Build for microchip_sam9x60ek_mmc_dev
      microchip_sama5d27_wlsom1_ek_mmc_defconfig     - Build for microchip_sama5d27_wlsom1_ek_mmc
      microchip_sama5d27_wlsom1_ek_mmc_dev_defconfig - Build for microchip_sama5d27_wlsom1_ek_mmc_dev
      microchip_sama5d2_icp_mmc_defconfig            - Build for microchip_sama5d2_icp_mmc
      microchip_sama5d2_icp_mmc_dev_defconfig        - Build for microchip_sama5d2_icp_mmc_dev
      minnowboard_max_defconfig                      - Build for minnowboard_max
      minnowboard_max-graphical_defconfig            - Build for minnowboard_max-graphical
      mx25pdk_defconfig                              - Build for mx25pdk
      mx51evk_defconfig                              - Build for mx51evk
      mx53loco_defconfig                             - Build for mx53loco
      mx6cubox_defconfig                             - Build for mx6cubox
      mx6sx_udoo_neo_defconfig                       - Build for mx6sx_udoo_neo
      mx6udoo_defconfig                              - Build for mx6udoo
      nexbox_a95x_defconfig                          - Build for nexbox_a95x
      nitrogen6sx_defconfig                          - Build for nitrogen6sx
      nitrogen6x_defconfig                           - Build for nitrogen6x
      nitrogen7_defconfig                            - Build for nitrogen7
      nitrogen8m_defconfig                           - Build for nitrogen8m
      nitrogen8mm_defconfig                          - Build for nitrogen8mm
      nitrogen8mn_defconfig                          - Build for nitrogen8mn
      nitrogen8mp_defconfig                          - Build for nitrogen8mp
      odroidc2_defconfig                             - Build for odroidc2
      odroidxu4_defconfig                            - Build for odroidxu4
      olimex_a10_olinuxino_lime_defconfig            - Build for olimex_a10_olinuxino_lime
      olimex_a13_olinuxino_defconfig                 - Build for olimex_a13_olinuxino
      olimex_a20_olinuxino_lime2_defconfig           - Build for olimex_a20_olinuxino_lime2
      olimex_a20_olinuxino_lime_defconfig            - Build for olimex_a20_olinuxino_lime
      olimex_a20_olinuxino_micro_defconfig           - Build for olimex_a20_olinuxino_micro
      olimex_a33_olinuxino_defconfig                 - Build for olimex_a33_olinuxino
      olimex_a64_olinuxino_defconfig                 - Build for olimex_a64_olinuxino
      olimex_imx233_olinuxino_defconfig              - Build for olimex_imx233_olinuxino
      olpc_xo175_defconfig                           - Build for olpc_xo175
      olpc_xo1_defconfig                             - Build for olpc_xo1
      openblocks_a6_defconfig                        - Build for openblocks_a6
      orangepi_lite2_defconfig                       - Build for orangepi_lite2
      orangepi_lite_defconfig                        - Build for orangepi_lite
      orangepi_one_defconfig                         - Build for orangepi_one
      orangepi_one_plus_defconfig                    - Build for orangepi_one_plus
      orangepi_pc2_defconfig                         - Build for orangepi_pc2
      orangepi_pc_defconfig                          - Build for orangepi_pc
      orangepi_pc_plus_defconfig                     - Build for orangepi_pc_plus
      orangepi_plus_defconfig                        - Build for orangepi_plus
      orangepi_prime_defconfig                       - Build for orangepi_prime
      orangepi_r1_defconfig                          - Build for orangepi_r1
      orangepi_rk3399_defconfig                      - Build for orangepi_rk3399
      orangepi_win_defconfig                         - Build for orangepi_win
      orangepi_zero_defconfig                        - Build for orangepi_zero
      orangepi_zero_plus2_defconfig                  - Build for orangepi_zero_plus2
      orangepi_zero_plus_defconfig                   - Build for orangepi_zero_plus
      pandaboard_defconfig                           - Build for pandaboard
      pcengines_apu2_defconfig                       - Build for pcengines_apu2
      pc_x86_64_bios_defconfig                       - Build for pc_x86_64_bios
      pc_x86_64_efi_defconfig                        - Build for pc_x86_64_efi
      pine64_defconfig                               - Build for pine64
      pine64_sopine_defconfig                        - Build for pine64_sopine
      qemu_aarch64_sbsa_defconfig                    - Build for qemu_aarch64_sbsa
      qemu_aarch64_virt_defconfig                    - Build for qemu_aarch64_virt
      qemu_arm_versatile_defconfig                   - Build for qemu_arm_versatile
      qemu_arm_versatile_nommu_defconfig             - Build for qemu_arm_versatile_nommu
      qemu_arm_vexpress_defconfig                    - Build for qemu_arm_vexpress
      qemu_arm_vexpress_tz_defconfig                 - Build for qemu_arm_vexpress_tz
      qemu_m68k_mcf5208_defconfig                    - Build for qemu_m68k_mcf5208
      qemu_m68k_q800_defconfig                       - Build for qemu_m68k_q800
      qemu_microblazebe_mmu_defconfig                - Build for qemu_microblazebe_mmu
      qemu_microblazeel_mmu_defconfig                - Build for qemu_microblazeel_mmu
      qemu_mips32r2el_malta_defconfig                - Build for qemu_mips32r2el_malta
      qemu_mips32r2_malta_defconfig                  - Build for qemu_mips32r2_malta
      qemu_mips32r6el_malta_defconfig                - Build for qemu_mips32r6el_malta
      qemu_mips32r6_malta_defconfig                  - Build for qemu_mips32r6_malta
      qemu_mips64el_malta_defconfig                  - Build for qemu_mips64el_malta
      qemu_mips64_malta_defconfig                    - Build for qemu_mips64_malta
      qemu_mips64r6el_malta_defconfig                - Build for qemu_mips64r6el_malta
      qemu_mips64r6_malta_defconfig                  - Build for qemu_mips64r6_malta
      qemu_nios2_10m50_defconfig                     - Build for qemu_nios2_10m50
      qemu_or1k_defconfig                            - Build for qemu_or1k
      qemu_ppc64_e5500_defconfig                     - Build for qemu_ppc64_e5500
      qemu_ppc64le_pseries_defconfig                 - Build for qemu_ppc64le_pseries
      qemu_ppc64_pseries_defconfig                   - Build for qemu_ppc64_pseries
      qemu_ppc_e500mc_defconfig                      - Build for qemu_ppc_e500mc
      qemu_ppc_g3beige_defconfig                     - Build for qemu_ppc_g3beige
      qemu_ppc_mac99_defconfig                       - Build for qemu_ppc_mac99
      qemu_ppc_mpc8544ds_defconfig                   - Build for qemu_ppc_mpc8544ds
      qemu_riscv32_virt_defconfig                    - Build for qemu_riscv32_virt
      qemu_riscv64_virt_defconfig                    - Build for qemu_riscv64_virt
      qemu_s390x_defconfig                           - Build for qemu_s390x
      qemu_sh4eb_r2d_defconfig                       - Build for qemu_sh4eb_r2d
      qemu_sh4_r2d_defconfig                         - Build for qemu_sh4_r2d
      qemu_sparc64_sun4u_defconfig                   - Build for qemu_sparc64_sun4u
      qemu_sparc_ss10_defconfig                      - Build for qemu_sparc_ss10
      qemu_x86_64_defconfig                          - Build for qemu_x86_64
      qemu_x86_defconfig                             - Build for qemu_x86
      qemu_xtensa_lx60_defconfig                     - Build for qemu_xtensa_lx60
      qemu_xtensa_lx60_nommu_defconfig               - Build for qemu_xtensa_lx60_nommu
      raspberrypi0_defconfig                         - Build for raspberrypi0
      raspberrypi0w_defconfig                        - Build for raspberrypi0w
      raspberrypi2_defconfig                         - Build for raspberrypi2
      raspberrypi3_64_defconfig                      - Build for raspberrypi3_64
      raspberrypi3_defconfig                         - Build for raspberrypi3
      raspberrypi3_qt5we_defconfig                   - Build for raspberrypi3_qt5we
      raspberrypi4_64_defconfig                      - Build for raspberrypi4_64
      raspberrypi4_defconfig                         - Build for raspberrypi4
      raspberrypicm4io_64_defconfig                  - Build for raspberrypicm4io_64
      raspberrypicm4io_defconfig                     - Build for raspberrypicm4io
      raspberrypi_defconfig                          - Build for raspberrypi
      riotboard_defconfig                            - Build for riotboard
      rock64_defconfig                               - Build for rock64
      rock_pi_4_defconfig                            - Build for rock_pi_4
      rock_pi_n10_defconfig                          - Build for rock_pi_n10
      rock_pi_n8_defconfig                           - Build for rock_pi_n8
      rockpro64_defconfig                            - Build for rockpro64
      roc_pc_rk3399_defconfig                        - Build for roc_pc_rk3399
      roseapplepi_defconfig                          - Build for roseapplepi
      s6lx9_microboard_defconfig                     - Build for s6lx9_microboard
      sheevaplug_defconfig                           - Build for sheevaplug
      snps_aarch64_vdk_defconfig                     - Build for snps_aarch64_vdk
      snps_arc700_axs101_defconfig                   - Build for snps_arc700_axs101
      snps_archs38_axs103_defconfig                  - Build for snps_archs38_axs103
      snps_archs38_haps_defconfig                    - Build for snps_archs38_haps
      snps_archs38_hsdk_defconfig                    - Build for snps_archs38_hsdk
      snps_archs38_vdk_defconfig                     - Build for snps_archs38_vdk
      socrates_cyclone5_defconfig                    - Build for socrates_cyclone5
      solidrun_clearfog_defconfig                    - Build for solidrun_clearfog
      solidrun_clearfog_gt_8k_defconfig              - Build for solidrun_clearfog_gt_8k
      solidrun_macchiatobin_defconfig                - Build for solidrun_macchiatobin
      stm32f429_disco_defconfig                      - Build for stm32f429_disco
      stm32f469_disco_defconfig                      - Build for stm32f469_disco
      stm32f469_disco_xip_defconfig                  - Build for stm32f469_disco_xip
      stm32mp157a_dk1_defconfig                      - Build for stm32mp157a_dk1
      stm32mp157c_dk2_defconfig                      - Build for stm32mp157c_dk2
      stm32mp157c_odyssey_defconfig                  - Build for stm32mp157c_odyssey
      terasic_de10nano_cyclone5_defconfig            - Build for terasic_de10nano_cyclone5
      toradex_apalis_imx6_defconfig                  - Build for toradex_apalis_imx6
      ts4900_defconfig                               - Build for ts4900
      ts5500_defconfig                               - Build for ts5500
      ts7680_defconfig                               - Build for ts7680
      uevm5432_defconfig                             - Build for uevm5432
      wandboard_defconfig                            - Build for wandboard
      warp7_defconfig                                - Build for warp7
      warpboard_defconfig                            - Build for warpboard
      zynq_microzed_defconfig                        - Build for zynq_microzed
      zynqmp_zcu106_defconfig                        - Build for zynqmp_zcu106
      zynq_qmtech_defconfig                          - Build for zynq_qmtech
      zynq_zc706_defconfig                           - Build for zynq_zc706
      zynq_zed_defconfig                             - Build for zynq_zed
     
    # run build process
    ./brm.sh build 
    [brm] select target configuration: raspberrypi3_defconfig
    
    # list output images
    ./brm.sh images
    total 157072
    drwxr-xr-x 3 electux electux      4096 Nov  2 18:13 .
    drwxr-xr-x 6 electux electux      4096 Nov  2 18:13 ..
    -rwxr-xr-x 1 electux electux     28939 Nov  2 18:12 bcm2710-rpi-3-b.dtb
    -rwxr-xr-x 1 electux electux     29558 Nov  2 18:12 bcm2710-rpi-3-b-plus.dtb
    -rwxr-xr-x 1 electux electux     27429 Nov  2 18:12 bcm2710-rpi-cm3.dtb
    -rw-r--r-- 1 electux electux  33554432 Nov  2 18:13 boot.vfat
    -rw-r--r-- 1 electux electux 125829120 Nov  2 18:13 rootfs.ext2
    lrwxrwxrwx 1 electux electux        11 Nov  2 18:13 rootfs.ext4 -> rootfs.ext2
    drwxr-xr-x 3 electux electux      4096 Nov  2 17:43 rpi-firmware
    -rw-r--r-- 1 electux electux 159384064 Nov  2 18:13 sdcard.img
    -rw-r--r-- 1 electux electux   6341136 Nov  2 18:12 zImage

Shell tool structure
--------------------

**brm** is based on MOP.

Shell tool structure

.. code-block:: bash

    brm.sh
    brm_list_projects.sh
    brm_setup_project.sh
    brm_clone_project.sh
    brm_list_configurations.sh
    brm_menu_configuration.sh
    brm_build_project.sh
    brm_list_images.sh
    brm_clean_project.sh

Copyright and licence
----------------------

|License: GPL v3| |License: Apache 2.0|

.. |License: GPL v3| image:: https://img.shields.io/badge/License-GPLv3-blue.svg
   :target: https://www.gnu.org/licenses/gpl-3.0

.. |License: Apache 2.0| image:: https://img.shields.io/badge/License-Apache%202.0-blue.svg
   :target: https://opensource.org/licenses/Apache-2.0

Copyright (C) 2021 by `electux.github.io/brm <https://electux.github.io/brm>`_

**brm** is free software; you can redistribute it and/or modify it
under the same terms as Bash itself, either Bash version 4.2.47 or,
at your option, any later version of Bash 4 you may have available.

Lets help and support FSF.

|Free Software Foundation|

.. |Free Software Foundation| image:: https://raw.githubusercontent.com/electux/brm/dev/docs/fsf-logo_1.png
   :target: https://my.fsf.org/

|Donate|

.. |Donate| image:: https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif
   :target: https://my.fsf.org/donate/

Indices and tables
------------------

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
