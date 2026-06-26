include $(TOPDIR)/rules.mk

PKG_NAME:=python-scikit-learn
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=scikit_learn
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=meson-python/host python-cython/host numpy/host python-scipy/host
HOST_BUILD_DEPENDS:=meson-python/host python-cython/host numpy/host python-scipy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scikit-learn
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A set of python modules for machine learning and data mining
  URL:=https://scikit-learn.org/
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy \
	+python3-joblib \
	+python3-threadpoolctl
endef

define Package/python3-scikit-learn/description
scikit-learn is a Python module for machine learning built on top of SciPy and is distributed under the 3-Clause BSD license.
The project was started in 2007 by David Cournapeau as a Google Summer of Code project, and since then many volunteers have contributed. See the About us page for a list of core contributors.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scikit-learn))
$(eval $(call BuildPackage,python3-scikit-learn))
$(eval $(call BuildPackage,python3-scikit-learn-src))
