include $(TOPDIR)/rules.mk

PKG_NAME:=libspatialite
PKG_VERSION:=5.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.gaia-gis.it/gaia-sins/libspatialite-sources/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-1.1
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/libspatialite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SpatiaLite is an open source library intended to extend the SQLite
	DEPENDS:=+libstdcpp +geos +freexl +librttopo +libxml2 +minizip +proj +libsqlite3 +zlib
	URL:=https://www.gaia-gis.it/fossil/libspatialite/index
endef

define Package/libspatialite/description
	SpatiaLite is an open source library intended to extend the SQLite core to support fully fledged Spatial SQL capabilities.
endef

CONFIGURE_ARGS += \
	--disable-static \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/spatialite.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/spatialite.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/spatialite.pc
endef

define Package/libspatialite/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libspatialite))
