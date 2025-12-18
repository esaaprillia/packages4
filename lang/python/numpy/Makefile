include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.3.5
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
  DEPENDS:=@!SOFT_FLOAT +INSTALL_GFORTRAN:libgfortran +python3 +libstdcpp +openblas
endef

define Package/python3-numpy/description
NumPy is the fundamental package for array computing with Python.

By default, this package is built without some modules.
For some modules to be available, the INSTALL_GFORTRAN symbol needs
to be enabled in the OpenWrt core/toolchain.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/numpy/f2py/src
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/numpy/f2py/src/{fortranobject.c,fortranobject.h} $(1)$(PYTHON3_PKG_DIR)/numpy/f2py/src/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/numpy/_core/lib
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/lib/{libnpymath.a,npy-pkg-config,pkgconfig} $(1)$(PYTHON3_PKG_DIR)/numpy/_core/lib/
	$(SED) 's,^\(includedir\)=.*,\1=$(PYTHON3_PKG_DIR)/numpy/_core/include,g' $(1)$(PYTHON3_PKG_DIR)/numpy/_core/lib/pkgconfig/numpy.pc
	$(SED) 's,^\(libdir\)=.*,\1=$(PYTHON3_PKG_DIR)/numpy/_core/lib,g' $(1)$(PYTHON3_PKG_DIR)/numpy/_core/lib/npy-pkg-config/npymath.ini
	$(SED) 's,^\(includedir\)=.*,\1=$(PYTHON3_PKG_DIR)/numpy/_core/include,g' $(1)$(PYTHON3_PKG_DIR)/numpy/_core/lib/npy-pkg-config/npymath.ini
	$(LN) $(PYTHON3_PKG_DIR)/numpy/_core/lib/pkgconfig/numpy.pc $(1)/usr/lib/pkgconfig/numpy.pc
	$(LN) $(PYTHON3_PKG_DIR)/numpy/_core/lib/npy-pkg-config $(1)/usr/lib/npy-pkg-config
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/numpy/random/lib
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/numpy/random/lib/libnpyrandom.a $(1)$(PYTHON3_PKG_DIR)/numpy/random/lib/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/numpy/_core/include
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/include/numpy $(1)$(PYTHON3_PKG_DIR)/numpy/_core/include/
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/numpy-config $(1)/usr/bin/
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/numpy-config $(2)/bin/numpy-config
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
