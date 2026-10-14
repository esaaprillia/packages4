include $(TOPDIR)/rules.mk

PKG_NAME:=netcdf-cxx4
PKG_VERSION:=4.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Unidata/netcdf-cxx4/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYRIGHT

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/netcdf-cxx4
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Official GitHub repository for netCDF-4 C++ library.
	DEPENDS:=+libcurl +netcdf-c
	URL:=https://github.com/Unidata/netcdf-cxx4
endef

define Package/netcdf-cxx4/description
	Official GitHub repository for netCDF-C++ libraries and utilities.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--enable-extra-tests \
	--enable-large-file-tests

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ncxx4-config $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/netcdf-cxx4.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/netcdf-cxx4.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/netcdf-cxx4.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/ncxx4-config
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/bin/ncxx4-config
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/bin/ncxx4-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/ncxx4-config $(2)/bin/ncxx4-config
endef

define Package/netcdf-cxx4/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,netcdf-cxx4))
