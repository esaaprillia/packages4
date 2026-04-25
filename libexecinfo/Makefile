include $(TOPDIR)/rules.mk

PKG_NAME:=libexecinfo
PKG_VERSION:=1.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=http://distcache.freebsd.org/local-distfiles/itetcu/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/libexecinfo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A quick-n-dirty BSD licensed clone of the GNU libc backtrace facility.
	DEPENDS:=
	URL:=https://www.freshports.org/devel/libexecinfo
endef

define Package/libexecinfo/description
	A quick-n-dirty BSD licensed clone of the GNU libc backtrace facility.
endef

TARGET_CFLAGS += $(FPIC)

define Build/Install
	mkdir -p "$(PKG_INSTALL_DIR)/usr/include"
	mkdir -p "$(PKG_INSTALL_DIR)/usr/lib"
	mkdir -p "$(PKG_INSTALL_DIR)/usr/lib/pkgconfig"
	$(CP) $(PKG_BUILD_DIR)/*.h $(PKG_INSTALL_DIR)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/{*.so*,*.a} $(PKG_INSTALL_DIR)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/libexecinfo.pc $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
	$(LN) libexecinfo.so.1 $(1)/usr/lib/libexecinfo.so
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libexecinfo.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libexecinfo.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libexecinfo.pc
endef

define Package/libexecinfo/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libexecinfo))
