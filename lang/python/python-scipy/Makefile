include $(TOPDIR)/rules.mk

PKG_NAME:=python-scipy
PKG_VERSION:=1.18.1
PKG_RELEASE:=1

PYPI_NAME:=scipy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=numpy/host python-pybind11/host python-pythran/host
HOST_BUILD_DEPENDS:=numpy/host python-pybind11/host python-pythran/host

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
  DEPENDS:=+libgfortran +python3 +python3-numpy +openblas +python3-pooch
endef

define Package/python3-scipy/description
  SciPy (pronounced “Sigh Pie”) is an open-source software for mathematics, science, and engineering.
  It includes modules for statistics, optimization, integration, linear algebra, Fourier transforms, signal and image processing, ODE solvers
endef

#define Host/Prepare
#	$(call Host/Prepare/Default)
#	$(INSTALL_BIN) files/native/libnpymath.a $(HOST_PYTHON3_PKG_DIR)/numpy/_core/lib/
#endef

#define Build/Prepare
#	$(call Build/Prepare/Default)
#	$(INSTALL_BIN) files/cross/libnpymath.a $(HOST_PYTHON3_PKG_DIR)/numpy/_core/lib/
#endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scipy))
$(eval $(call BuildPackage,python3-scipy))
$(eval $(call BuildPackage,python3-scipy-src))
