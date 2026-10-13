include $(TOPDIR)/rules.mk

PKG_NAME:=python-netcdf4
PKG_VERSION:=1.7.4
PKG_RELEASE:=1

PYPI_NAME:=netcdf4
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host numpy/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-netcdf4
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Provides an object-oriented python interface to the netCDF version 4 library
  URL:=https://github.com/Unidata/netcdf4-python
  DEPENDS:= \
	+python3-light \
	+python3-cftime \
	+python3-certifi \
	+python3-packaging \
	+python3-numpy \
	+netcdf-c
endef

define Package/python3-netcdf4/description
netCDF version 4 has many features not found in earlier versions of the library, such as hierarchical groups, zlib compression, multiple unlimited dimensions, and new data types. It is implemented on top of HDF5.
endef

PYTHON3_PKG_SETUP_VARS += USE_NCCONFIG=1 NETCDF4_DIR="$(STAGING_DIR)/usr" NETCDF_PLUGIN_DIR="$(STAGING_DIR)/usr/lib/netcdf/plugin"

$(eval $(call Py3Package,python3-netcdf4))
$(eval $(call BuildPackage,python3-netcdf4))
$(eval $(call BuildPackage,python3-netcdf4-src))
