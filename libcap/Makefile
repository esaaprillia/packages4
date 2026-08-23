include $(TOPDIR)/rules.mk

PKG_NAME:=libcap
PKG_VERSION:=2.78
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://kernel.org/pub/linux/libs/security/linux-privs/libcap2/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause OR GPL-2.0-only
PKG_LICENSE_FILES:=License

include $(INCLUDE_DIR)/package.mk

define Package/libcap
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=
	TITLE:=POSIX 1003.1e capabilities
	URL:=https://sites.google.com/site/fullycapable/
endef

define Package/libcap/description
	This site is devoted to announcing new versions of libcap (both C and Go implementations), and sharing information about using Linux Capabilities -- an alternative to the superuser model of privilege under Linux.
endef

define Build/Compile
	$(MAKE_VARS) $(MAKE) CC="$(TARGET_CC)" lib=lib prefix=/usr GOLANG=no DESTDIR="$(PKG_INSTALL_DIR)" -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS)
endef

define Build/Install
	$(MAKE_VARS) $(MAKE) lib=lib prefix=/usr GOLANG=no DESTDIR="$(PKG_INSTALL_DIR)" install -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_INSTALL_FLAGS)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libcap/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libcap))
