include $(TOPDIR)/rules.mk

PKG_NAME:=libyuv
PKG_VERSION:=0.0.1887.20251502
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://chromium.googlesource.com/libyuv/libyuv
PKG_SOURCE_VERSION:=a6a2ec654b1be1166b376476a7555c89eca0c275
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libyuv
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Library for YUV scaling
	DEPENDS:=+libstdcpp +libjpeg-turbo
	URL:=https://chromium.googlesource.com/libyuv
endef

define Package/libyuv/description
	libyuv is an open source project that includes YUV scaling and conversion functionality.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DUNIT_TEST=0

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libyuv/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libyuv))
