include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=140dd80ff8981a583a60980be1a655068f8adebf7a45a06a6858c873fcdcd4a0

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:numpy:numpy

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-cython/host meson-python/host openblas/host
PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-cython/host meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

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

define Host/Prepare
	$(call Host/Prepare/Default)
	$(INSTALL_CONF) files/native/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/cross/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
$(eval $(call HostBuild))
