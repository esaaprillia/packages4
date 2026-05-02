include $(TOPDIR)/rules.mk

PKG_NAME:=libb2
PKG_VERSION:=0.98.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/BLAKE2/libb2/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=CC0-1.0
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/libb2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp
	DEPENDS:=+libgomp
	URL:=https://blake2.net/
endef

define Package/libb2/description
C library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp hash functions
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libb2.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libb2/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libb2))
