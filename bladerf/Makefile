include $(TOPDIR)/rules.mk

PKG_NAME:=bladerf
PKG_VERSION:=2025.10
PKG_RELEASE:=1

#PKG_SOURCE:=bladeRF-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/Nuand/bladeRF/archive/$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/Nuand/bladeRF.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=fcf9423325ae49f5fdd2e5b52ab68bfc2576ad47
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT LGPLv2.1 GPLv2
PKG_LICENSE_FILES:=COPYING

#PKG_BUILD_DIR:=$(BUILD_DIR)/bladeRF-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/bladerf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=bladeRF USB 3.0 Superspeed Software Defined Radio Source Code
	DEPENDS:=+libcurl +libedit +libusb-1.0 +libncurses
	URL:=https://github.com/Nuand/bladeRF
endef

define Package/bladerf/description
This repository contains all the source code required to program and interact with a bladeRF platform, including firmware for the Cypress FX3 USB controller, HDL for the Altera Cyclone IV FPGA, and C code for the host side libraries, drivers, and utilities.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True \
	-DTAGGED_RELEASE=ON \
	-DLIBUSB_VERSION=1.0.29 \
	-DUDEV_RULES_PATH=/usr/lib/udev/rules.d

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libbladeRF.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libbladeRF.pc
endef

define Package/bladerf/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/udev
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/udev/rules.d $(1)/usr/lib/udev/
endef

$(eval $(call BuildPackage,bladerf))
