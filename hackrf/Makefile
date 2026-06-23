include $(TOPDIR)/rules.mk

PKG_NAME:=hackrf
PKG_VERSION:=2026.01.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/greatscottgadgets/hackrf/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/hackrf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=low cost software radio platform
	DEPENDS:=+libusb-1.0 +fftw3f
	URL:=https://github.com/greatscottgadgets/hackrf
endef

define Package/hackrf/description
	This repository contains hardware designs and software for HackRF, a low cost, open source Software Defined Radio platform.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libhackrf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libhackrf.pc
endef

define Package/hackrf/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,hackrf))
