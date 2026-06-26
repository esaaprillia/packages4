include $(TOPDIR)/rules.mk

PKG_NAME:=airspyhf
PKG_VERSION:=1.6.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/airspy/airspyhf/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause GPL-2.0
PKG_LICENSE_FILES:=LICENSE.BSD LICENSE.GPL-2.0

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/airspyhf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Code repository for AirspyHF+
	DEPENDS:=+libusb-1.0
	URL:=https://github.com/airspy/airspyhf
endef

define Package/airspyhf/description
	This repository contains host software (Linux/Windows) for Airspy HF+, a high performance software defined radio for the HF and VHF bands.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libairspyhf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libairspyhf.pc
endef

define Package/airspyhf/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,airspyhf))
