include $(TOPDIR)/rules.mk

PKG_NAME:=bladerf
PKG_VERSION:=2025.10
PKG_RELEASE:=1

PKG_SOURCE:=bladeRF-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Nuand/bladeRF/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT LGPLv2.1 GPLv2
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/bladeRF-$(PKG_VERSION)

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
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/bladerf $(1)/usr/share/
endef

$(eval $(call BuildPackage,bladerf))
