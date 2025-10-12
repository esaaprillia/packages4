include $(TOPDIR)/rules.mk

PKG_NAME:=libdatachannel
PKG_VERSION:=0.23.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/paullouisageneau/libdatachannel/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=plog

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libdatachannel
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libdatachannel - C/C++ WebRTC network library
	DEPENDS:=+libnice +usrsctp +libsrtp +nlohmannjson +libopenssl
	URL:=https://libdatachannel.org/
endef

define Package/libdatachannel/description
	C/C++ WebRTC network library featuring Data Channels, Media Transport, and WebSockets
endef

CMAKE_OPTIONS += \
	-DUSE_NICE=1 \
	-DPREFER_SYSTEM_LIB=1

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libdatachannel/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdatachannel))
