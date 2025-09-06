include $(TOPDIR)/rules.mk

PKG_NAME:=python-scipy
PKG_VERSION:=1.16.1
PKG_RELEASE:=1

PYPI_NAME:=scipy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host meson-python/host numpy/host python-pybind11/host python-pythran/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host meson-python/host numpy/host python-pybind11/host python-pythran/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scipy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fundamental algorithms for scientific computing in Python
  URL:=https://scipy.org
  DEPENDS:=+INSTALL_GFORTRAN:libgfortran +python3 +python3-numpy +openblas +python3-pooch
endef

define Package/python3-scipy/description
  SciPy (pronounced “Sigh Pie”) is an open-source software for mathematics, science, and engineering.
  It includes modules for statistics, optimization, integration, linear algebra, Fourier transforms, signal and image processing, ODE solvers
endef

define Host/Prepare
	$(call Host/Prepare/Default)
	$(INSTALL_CONF) files/native/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/cross/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

$(eval $(call Py3Package,python3-scipy))
$(eval $(call BuildPackage,python3-scipy))
$(eval $(call BuildPackage,python3-scipy-src))
$(eval $(call HostBuild))
