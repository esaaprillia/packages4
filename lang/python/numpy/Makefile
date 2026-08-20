include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.5.2
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:numpy:numpy

PKG_BUILD_DEPENDS:=python-cython/host meson-python/host
HOST_BUILD_DEPENDS:=python-cython/host meson-python/host openblas/host

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
  DEPENDS:= \
	+python3 \
	+libgfortran \
	+libstdcpp \
	+openblas
endef

define Package/python3-numpy/description
NumPy is the fundamental package for array computing with Python.

By default, this package is built without some modules.
For some modules to be available, the INSTALL_GFORTRAN symbol needs
to be enabled in the OpenWrt core/toolchain.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(PYTHON3_PKG_DIR)/numpy/_core/include/numpy
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/_core/include/numpy/{*.c,*.h} $(1)/$(PYTHON3_PKG_DIR)/numpy/_core/include/numpy/
	$(INSTALL_DIR) $(PYTHON3_PKG_DIR)/numpy/_core/include/numpy/random
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/_core/include/numpy/random/*.h $(1)/$(PYTHON3_PKG_DIR)/numpy/_core/include/numpy/random/
	$(INSTALL_DIR) $(PYTHON3_PKG_DIR)/numpy/_core/lib
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/_core/lib/libnpymath.a $(1)/$(PYTHON3_PKG_DIR)/numpy/_core/lib/
	$(INSTALL_DIR) $(PYTHON3_PKG_DIR)/numpy/_core/tests/examples/limited_api
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/_core/tests/examples/limited_api/limited_api.c $(1)/$(PYTHON3_PKG_DIR)/numpy/_core/tests/examples/limited_api/
	$(INSTALL_DIR) $(PYTHON3_PKG_DIR)/numpy/f2py/src
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/f2py/src/{*.c,*.h} $(1)/$(PYTHON3_PKG_DIR)/numpy/f2py/src/
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/f2py/tests/src/array_from_pyobj
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/f2py/tests/src/array_from_pyobj/wrapmodule.c $(1)/$(PYTHON3_PKG_DIR)/numpy/f2py/tests/src/array_from_pyobj/
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/random/lib
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/numpy/random/lib/libnpyrandom.a $(1)/$(PYTHON3_PKG_DIR)/numpy/random/lib/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
