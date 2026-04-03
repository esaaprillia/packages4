include $(TOPDIR)/rules.mk

PKG_NAME:=netcdf-c
PKG_VERSION:=4.10.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Unidata/netcdf-c/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/netcdf-c
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Official GitHub repository for netCDF-C libraries and utilities.
	DEPENDS:=+hdf5 +libcurl +libxml2 +libaec +c-blosc +bzip2 +libzip +zstd
	URL:=https://github.com/Unidata/netcdf-c
endef

define Package/netcdf-c/description
	The Unidata network Common Data Form (netCDF) is an interface for scientific data access and a freely-distributed software library that provides an implementation of the interface.
endef

CMAKE_OPTIONS += \
    -DENABLE_BYTERANGE=ON \
    -DENABLE_CDF5=ON \
    -DENABLE_DAP_LONG_TESTS=ON \
    -DENABLE_DAP_REMOTE_TESTS=ON \
    -DENABLE_EXAMPLE_TESTS=ON \
    -DENABLE_EXTRA_TESTS=ON \
    -DENABLE_FILTER_TESTING=ON \
    -DENABLE_LARGE_FILE_TESTS=ON \
    -DENABLE_UNIT_TESTS=ON \
    -DNETCDF_ENABLE_LOGGING=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/netcdf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/netcdf.pc
endef

define Package/netcdf-c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,netcdf-c))
