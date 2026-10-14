include $(TOPDIR)/rules.mk

PKG_NAME:=netcdf-fortran
PKG_VERSION:=4.6.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Unidata/netcdf-fortran/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYRIGHT

PKG_INSTALL:=1
include $(INCLUDE_DIR)/package.mk

define Package/netcdf-fortran
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Unidata NetCDF Fortran Library
	DEPENDS:=+libcurl +libgfortran +netcdf-c
	URL:=https://github.com/Unidata/netcdf-fortran
endef

define Package/netcdf-fortran/description
	The Unidata network Common Data Form (netCDF) is an interface for scientific data access and a freely-distributed software library that provides an implementation of the interface.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/nf-config $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/netcdf-fortran.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/netcdf-fortran.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/netcdf-fortran.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/nf-config
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/bin/nf-config
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/bin/nf-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/nf-config $(2)/bin/nf-config
endef

define Package/netcdf-fortran/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{libnetcdff.settings,*.so*} $(1)/usr/lib/
endef

$(eval $(call BuildPackage,netcdf-fortran))
