section1: build kernel image
step1:
file: linux-xlnx-4.0/drivers/gpu/drm/xilinx/dglnt_encoder.c
line: 39-42
detial: modify the resolution to the actual value of you lvds lcd panel.

step2:
file: linux-xlnx-4.0/drivers/gpu/drm/drm_edid.c
line: 148 for srm_display_mode drm_dmt_modes
detial: Add your lcd parameter to the drm_dmt_modes[]

step3:
cd linux-xlnx-4.0
. /opt/Xilinx2015/SDK/2015.4/settings64.sh
make ARCH=arm zynq_microzus_defconfig
make ARCH=arm menuconfig
make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi- UIMAGE_LOADADDR=0x8000 uImage

step4:
copy the uImage file in the arch/arm/boot/uImage to you SD card

section2: generate dtb file
cd X_Ubuntu
dtc -I dts -O dtb -o devicetree.dtb zynq_microzus.dts

copy the devicetree.dtb to your SD card

section3: generate uboot file
cd u-boot-xlnx-master
. /opt/Xilinx2015/SDK/2015.4/settings64.sh
make ARCH=arm zynq_microzus_defconfig
make ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi-
mv u-boot u-boot.elf
cp u-boot.elf /mnt/SD/




