include $(TOPDIR)/rules.mk

PKG_NAME:=sfcgal
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PKG_SOURCE:=SFCGAL-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.com/sfcgal/SFCGAL/-/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=cgal
PKG_BUILD_DIR:=$(BUILD_DIR)/SFCGAL-v$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sfcgal
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A wrapper around CGAL that intents to implement 2D and 3D operations on OGC standards models
	DEPENDS:=+libstdcpp +libmpfr +libgmp +boost-serialization +boost-thread
	URL:=https://gitlab.com/sfcgal/SFCGAL
endef

define Package/sfcgal/description
	SFCGAL is a C++ wrapper library around CGAL with the aim of supporting ISO 19107:2019 and OGC Simple Features for 3D operations.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DSFCGAL_BUILD_TESTS=OFF \
	-DSFCGAL_WITH_OSG=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sfcgal.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sfcgal.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/sfcgal-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/sfcgal-config $(2)/bin/sfcgal-config
endef

define Package/sfcgal/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sfcgal))
