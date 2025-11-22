include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybind11
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PYPI_NAME:=pybind11
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-scikit-build-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-scikit-build-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pybind11
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Seamless operability between C++11 and Python
  URL:=https://github.com/pybind/pybind11
  DEPENDS:=+python3
endef

define Package/python3-pybind11/description
  pybind11 is a lightweight header-only library that exposes C++ types in Python and vice versa, mainly to create Python bindings of existing C++ code.
endef

define Build/Install
	$(call Py3Build/Install)
	$(INSTALL_DIR) $(STAGING_DIR)/usr/include
	$(LN) $(PYTHON3_PKG_DIR)/pybind11/include/pybind11 $(STAGING_DIR)/usr/include/pybind11
	$(INSTALL_DIR) $(STAGING_DIR)/usr/lib/cmake
	$(LN) $(PYTHON3_PKG_DIR)/pybind11/share/cmake/pybind11 $(STAGING_DIR)/usr/lib/cmake/pybind11
	$(INSTALL_DIR) $(STAGING_DIR)/usr/lib/pkgconfig
	$(LN) $(PYTHON3_PKG_DIR)/pybind11/share/pkgconfig/pybind11.pc $(STAGING_DIR)/usr/lib/pkgconfig/pybind11.pc
endef

define Host/Install
	$(call Py3Host/Install)
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/include
	$(LN) $(HOST_PYTHON3_PKG_DIR)/pybind11/include/pybind11 $(STAGING_DIR_HOSTPKG)/include/pybind11
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/lib/cmake
	$(LN) $(HOST_PYTHON3_PKG_DIR)/pybind11/share/cmake/pybind11 $(STAGING_DIR_HOSTPKG)/lib/cmake/pybind11
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/lib/pkgconfig
	$(LN) $(HOST_PYTHON3_PKG_DIR)/pybind11/share/pkgconfig/pybind11.pc $(STAGING_DIR_HOSTPKG)/lib/pkgconfig/pybind11.pc
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pybind11))
$(eval $(call BuildPackage,python3-pybind11))
$(eval $(call BuildPackage,python3-pybind11-src))
