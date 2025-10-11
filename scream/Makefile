include $(TOPDIR)/rules.mk

PKG_NAME:=scream
PKG_VERSION:=4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/duncanthrax/scream/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MS-PL
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
CMAKE_SOURCE_SUBDIR:= Receivers/unix

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/scream
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Virtual network sound card for Microsoft Windows
	DEPENDS:=+alsa-lib
	URL:=https://github.com/duncanthrax/scream
endef

define Package/scream/description
	Scream is a virtual device driver for Windows that provides a discrete sound device. Audio played through this device is published on your local network as a PCM multicast stream.
endef

define Package/scream/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/scream \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,scream))
