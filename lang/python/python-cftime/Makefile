include $(TOPDIR)/rules.mk

PKG_NAME:=python-cftime
PKG_VERSION:=1.6.6
PKG_RELEASE:=1

PYPI_NAME:=cftime
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cftime
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Time-handling functionality from netcdf4-python
  URL:=https://github.com/unidata/cftime
  DEPENDS:= \
	+python3-light \
	+python3-numpy
endef

define Package/python3-cftime/description
Time-handling functionality from netcdf4-python
endef

$(eval $(call Py3Package,python3-cftime))
$(eval $(call BuildPackage,python3-cftime))
$(eval $(call BuildPackage,python3-cftime-src))
