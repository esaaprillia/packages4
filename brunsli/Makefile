include $(TOPDIR)/rules.mk

PKG_NAME:=brunsli
PKG_VERSION:=0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/brunsli/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/brunsli
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Practical JPEG Repacker
	DEPENDS:=+libstdcpp +brotli
	URL:=https://github.com/google/brunsli
endef

define Package/brunsli/description
	Brunsli is a lossless JPEG repacking library.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DVERSION=$(PKG_VERSION)

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/brunsli/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,brunsli))
