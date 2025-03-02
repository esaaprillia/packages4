include $(TOPDIR)/rules.mk

PKG_NAME:=sonic
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-release-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/waywardgeek/sonic/archive/release-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-release-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sonic
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple library to speed up or slow down speech
	DEPENDS:=
	URL:=https://github.com/waywardgeek/sonic
endef

define Package/sonic/description
Sonic is a simple algorithm for speeding up or slowing down speech.  However,
it's optimized for speed ups of over 2X, unlike previous algorithms for changing
speech rate.  The Sonic library is a very simple ANSI C library that is designed
to easily be integrated into streaming voice applications, like TTS back ends.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/sonic.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/sonic/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sonic))
