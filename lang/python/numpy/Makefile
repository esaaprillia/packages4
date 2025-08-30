include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.3.2
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:numpy:numpy

HOST_BUILD_DEPENDS:=python-cython/host meson-python/host openblas/host
PKG_BUILD_DEPENDS:=python-cython/host meson-python/host

MESON_USE_STAGING_PYTHON:=1

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

MESON_ARGS+= \
	-Ddisable-optimization=true \
	-Dcpu-baseline=min

# Override 'Meson', to use numpy's vendored meson
define Meson
	$(call Python3/Run,,$(PKG_BUILD_DIR)/vendored-meson/meson/meson.py $(1),$(2))
endef

define Package/python3-numpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The fundamental package for scientific computing with Python
  URL:=https://www.numpy.org/
  DEPENDS:=@!SOFT_FLOAT +INSTALL_GFORTRAN:libgfortran +python3 +libstdcpp +openblas
endef

define Package/python3-numpy/description
NumPy is the fundamental package for array computing with Python.

By default, this package is built without some modules.
For some modules to be available, the INSTALL_GFORTRAN symbol needs
to be enabled in the OpenWrt core/toolchain.
endef

$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
$(eval $(call HostBuild))
