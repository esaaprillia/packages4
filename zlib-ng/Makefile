include $(TOPDIR)/rules.mk

PKG_NAME:=zlib-ng
PKG_VERSION:=2.2.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/zlib-ng/zlib-ng/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.md

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/zlib-ng
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=zlib replacement with optimizations for "next generation" systems.
	DEPENDS:=
	URL:=https://github.com/zlib-ng/zlib-ng
endef

define Package/zlib-ng/description
	zlib data compression library for the next generation systems
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DWITH_GTEST=OFF \
	-DWITH_UNALIGNED=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/zlib-ng.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/zlib-ng.pc
endef

define Package/zlib-ng/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,zlib-ng))
