include $(TOPDIR)/rules.mk

PKG_NAME:=qb3
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PKG_SOURCE:=QB3-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/lucianpls/QB3/archive/V$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/QB3-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/qb3
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Extremely Fast Lossless Image Compression
	DEPENDS:=+libstdcpp
	URL:=https://github.com/lucianpls/QB3
endef

define Package/qb3/description
	QB3: Image/Raster Compression, Fast and Efficient
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/qb3/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,qb3))
