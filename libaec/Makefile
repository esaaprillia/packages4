include $(TOPDIR)/rules.mk

PKG_NAME:=libaec
PKG_VERSION:=1.1.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.dkrz.de/k202009/libaec/-/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 2-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-v$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libaec
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Adaptive Entropy Coding library
	DEPENDS:=
	URL:=https://gitlab.dkrz.de/k202009/libaec
endef

define Package/libaec/description
	Libaec provides fast lossless compression of 1 up to 32 bit wide signed or unsigned integers (samples).
	The library achieves best results for low entropy data as often encountered in space imaging instrument data or numerical model output from weather or climate simulations.
	While floating point representations are not directly supported, they can also be efficiently coded by grouping exponents and mantissa.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libaec/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libaec))
