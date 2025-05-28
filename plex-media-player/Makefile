include $(TOPDIR)/rules.mk

PKG_NAME:=plex-media-player
PKG_VERSION:=2.58.1-ae73e074
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/plexinc/plex-media-player/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/plex-media-player
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Next generation Plex Desktop/Embedded Client
	DEPENDS:=
	URL:=https://github.com/plexinc/plex-media-player
endef

define Package/plex-media-player/description
	Note: Plex is no longer actively maintaining Plex Media Player. This repository is preserved as it was when last developed. See https://www.plex.tv/media-server-downloads/#plex-app for replacement applications.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_BUILD_DIR)/build/dependencies
	$(CP) ./files/* $(PKG_BUILD_DIR)/build/dependencies/
	$(CP) ./files/* $(PKG_BUILD_DIR)/
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Package/plex-media-player/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/brotli \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,plex-media-player))
