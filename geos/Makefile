include $(TOPDIR)/rules.mk

PKG_NAME:=geos
PKG_VERSION:=3.14.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://download.osgeo.org/geos/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/geos
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GEOS is a library providing OpenGIS and JTS spatial operations in C++.
	DEPENDS:=+libstdcpp
	URL:=https://libgeos.org/
endef

define Package/geos/description
	GEOS is a C/C++ library for computational geometry with a focus on algorithms used in geographic information systems (GIS) software.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/geos.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/geos.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/geos-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/geos-config $(2)/bin/geos-config
endef

define Package/geos/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/geosop $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,geos))
