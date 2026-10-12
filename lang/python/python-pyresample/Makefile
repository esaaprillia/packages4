include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyresample
PKG_VERSION:=1.35.0
PKG_RELEASE:=1

PYPI_NAME:=pyresample
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-hatch-cython/host python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyresample
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Geospatial image resampling in Python
  URL:=https://github.com/pytroll/pyresample
  DEPENDS:= \
	+python3-light \
	+python3-pyproj \
	+python3-configobj \
	+python3-pykdtree \
	+python3-yaml \
	+python3-numpy \
	+python3-shapely \
	+python3-donfig \
	+python3-platformdirs
endef

define Package/python3-pyresample/description
Pyresample is a python package for resampling geospatial image data.
endef

$(eval $(call Py3Package,python3-pyresample))
$(eval $(call BuildPackage,python3-pyresample))
$(eval $(call BuildPackage,python3-pyresample-src))
