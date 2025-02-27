include $(TOPDIR)/rules.mk

PKG_NAME:=libunibreak
PKG_VERSION:=6.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/adah1972/libunibreak/releases/download/libunibreak_6_1
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENCE

include $(INCLUDE_DIR)/package.mk

define Package/libunibreak
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=The libunibreak library
  URL:=https://github.com/adah1972/libunibreak/
  DEPENDS:=
endef

define Package/libunibreak/description
  This is the README file for libunibreak, an implementation of the line breaking and word/grapheme breaking algorithms as described in Unicode Standard Annex 14 (UAX #14) and Unicode Standard Annex 29 (UAX #29). Check the project's home page for up-to-date information.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libunibreak/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libunibreak))
