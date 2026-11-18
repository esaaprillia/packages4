include $(TOPDIR)/rules.mk

PKG_NAME:=l-smash
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/l-smash/l-smash/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/l-smash
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=L-SMASH — Loyal to Spec of Mpeg4 and Ad-hoc Simple Hackwork
	DEPENDS:=
	URL:=https://github.com/l-smash/l-smash
endef

define Package/l-smash/description
L-SMASH is a lightweight, high-performance, zero-external-dependency C11 media container library (liblsmash, with public header lsmash.h maintaining strict C99 and C++ compatibility) and command-line toolset for reading, writing, remultiplexing, and inspecting ISO Base Media File Format (ISOBMFF) and QuickTime File Format (QTFF) files.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--disable-static

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/liblsmash.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/liblsmash.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/liblsmash.pc
endef

define Package/l-smash/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,l-smash))
