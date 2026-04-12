include $(TOPDIR)/rules.mk

PKG_NAME:=librasterlite2
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-beta1.tar.gz
PKG_SOURCE_URL:=https://www.gaia-gis.it/gaia-sins/librasterlite2-sources/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL 1.1
PKG_LICENSE_FILES:=COPYING

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)-beta1

include $(INCLUDE_DIR)/package.mk

define Package/librasterlite2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Library for storing and retrieving huge raster coverages using a SpatiaLite DBMS
	DEPENDS:=+libstdcpp +charls +libcairo +libcurl +libfreetype +libgeotiff +giflib +libjpeg-turbo +liblz4 +liblzma +openjpeg +libpng +libspatialite +libsqlite3 +libtiff +libwebp +libxml2 +zlib +libzstd
	URL:=https://www.gaia-gis.it/fossil/librasterlite2/index
endef

define Package/librasterlite2/description
	librasterlite2 is an open source library that stores and retrieves huge raster coverages using a SpatiaLite DBMS.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/rasterlite2.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/rasterlite2.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/rasterlite2.pc
endef

define Package/librasterlite2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,librasterlite2))
