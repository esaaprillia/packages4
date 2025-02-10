#
# Copyright (C) 2008-2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=unicam-bcm2835
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define KernelPackage/unicam-bcm2835
  TITLE:=BCM2835 unicam
  KCONFIG:= \
    CONFIG_VIDEO_BCM2835_UNICAM \
    CONFIG_VIDEO_V4L2_SUBDEV_API
  FILES:= \
    $(LINUX_DIR)/drivers/media/platform/bcm2835/bcm2835-unicam.ko
  AUTOLOAD:=$(call AutoLoad,66,bcm2835-unicam)
  $(call AddDepends/video,@TARGET_bcm27xx kmod-video-dma-contig kmod-video-fwnode kmod-video-videobuf2)
endef

include $(INCLUDE_DIR)/kernel-defaults.mk

define KernelPackage/unicam-bcm2835/description
  This is a V4L2 driver that controls the CSI-2 receiver directly,
  independently from the VC4 firmware.
  This driver is mutually exclusive with the use of bcm2835-camera. The
  firmware will disable all access to the peripheral from within the
  firmware if it finds a DT node using it, and bcm2835-camera will
  therefore fail to probe.
endef

define Build/Compile
	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
endef

$(eval $(call KernelPackage,unicam-bcm2835))
