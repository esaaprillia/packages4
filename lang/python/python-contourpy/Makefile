include $(TOPDIR)/rules.mk

PKG_NAME:=python-contourpy
PKG_VERSION:=1.3.3
PKG_RELEASE:=1

PYPI_NAME:=contourpy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-pybind11/host meson-python/host
PKG_BUILD_DEPENDS:=python-pybind11/host meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-contourpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for calculating contours of 2D quadrilateral grids
  URL:=https://github.com/contourpy/contourpy
  DEPENDS:=+python3 +python3-numpy +libstdcpp
endef

define Package/python3-contourpy/description
  ContourPy is a Python library for calculating contours of 2D quadrilateral grids.
  It is written in C++11 and wrapped using pybind11.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/cross/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

$(eval $(call Py3Package,python3-contourpy))
$(eval $(call BuildPackage,python3-contourpy))
$(eval $(call BuildPackage,python3-contourpy-src))
$(eval $(call HostBuild))
