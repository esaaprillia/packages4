include $(TOPDIR)/rules.mk

PKG_NAME:=python-satpy
PKG_VERSION:=0.60.0
PKG_RELEASE:=1

PYPI_NAME:=satpy
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-satpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python package for earth-observing satellite data processing
  URL:=https://github.com/pytroll/satpy
  DEPENDS:= \
	+python3-light \
	+python3-platformdirs \
	+python3-dask \
	+python3-donfig \
	+python3-numpy \
	+python3-packaging \
	+python3-pillow \
	+python3-pooch \
	+python3-pykdtree \
	+python3-pyorbital \
	+python3-pyproj \
	+python3-pyresample \
	+python3-yaml \
	+python3-trollimage \
	+python3-trollsift \
	+python3-xarray \
	+python3-zarr \
	+python3-universal-pathlib
endef

define Package/python3-satpy/description
The Satpy package is a python library for reading and manipulating meteorological remote sensing data and writing it to various image and data file formats.
endef

$(eval $(call Py3Package,python3-satpy))
$(eval $(call BuildPackage,python3-satpy))
$(eval $(call BuildPackage,python3-satpy-src))
