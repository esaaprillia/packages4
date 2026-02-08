include $(TOPDIR)/rules.mk

PKG_NAME:=geoip
PKG_VERSION:=1.6.12
PKG_RELEASE:=1

PKG_SOURCE:=GeoIP-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/maxmind/geoip-api-c/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/GeoIP-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/geoip
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Non-DNS IP-to-country resolver C library & utils
	DEPENDS:=+zlib
	URL:=https://www.maxmind.com/app/c
endef

define Package/geoip/description
This is the portable OTR Messaging Library, as well as the toolkit to help you forge messages.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/geoip.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/geoip.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/geoip.pc
endef

define Package/geoip/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,geoip))
