include $(TOPDIR)/rules.mk

PKG_NAME:=ortp20
PKG_VERSION:=0.20.0
PKG_RELEASE:=1

PKG_SOURCE:=ortp-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/BelledonneCommunications/ortp/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPLv3
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/ortp-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/ortp20
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=oRTP is a C library implementing the RTP protocol (rfc3550).
	DEPENDS:=+libzrtpcpp +libstdcpp +libsrtp
	URL:=https://gitlab.linphone.org/BC/public/ortp
endef

define Package/ortp20/description
oRTP is a C library implementing the RTP protocol (rfc3550).
It is available for most unix clones (primilarly Linux and HP-UX), and Microsoft Windows.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/ortp.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/ortp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/ortp.pc
endef

define Package/ortp20/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ortp20))
