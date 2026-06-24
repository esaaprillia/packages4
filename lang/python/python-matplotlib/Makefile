include $(TOPDIR)/rules.mk

PKG_NAME:=python-matplotlib
PKG_VERSION:=3.11.0
PKG_RELEASE:=1

PYPI_NAME:=matplotlib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PSF-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson-python/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-matplotlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=matplotlib plotting with Python
  URL:=https://matplotlib.org/
  DEPENDS:= \
	+python3 \
	+python3-contourpy \
	+python3-cycler \
	+python3-fonttools \
	+python3-kiwisolver \
	+python3-numpy \
	+python3-packaging \
	+python3-pillow \
	+python3-pyparsing \
	+python3-dateutil \
	+libfreetype \
	+qhull
endef

define Package/python3-matplotlib/description
  Matplotlib is a comprehensive library for creating static, animated, and interactive visualizations in Python.
endef

MESON_ARGS += \
	-Dsystem-freetype=true \
	-Dsystem-qhull=true

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib-src))
