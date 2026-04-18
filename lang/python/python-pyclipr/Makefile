include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyclipr
PKG_VERSION:=0.1.8
PKG_RELEASE:=1

PYPI_NAME:=pyclipr
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-scikit-build/host python-scikit-build-core/host python-hatch-build-scripts/host python-pybind11-stubgen/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyclipr
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python library for polygon clipping and offsetting based on Clipper2
  URL:=https://github.com/drlukeparry/pyclipr
  DEPENDS:= \
	+python3 \
	+python3-numpy
endef

define Package/python3-pyclipr/description
  Pyclipr is a Python library offering the functionality of the Clipper2 polygon clipping and offsetting library and are built upon pybind .
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyclipr))
$(eval $(call BuildPackage,python3-pyclipr))
$(eval $(call BuildPackage,python3-pyclipr-src))
