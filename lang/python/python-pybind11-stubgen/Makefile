include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybind11-stubgen
PKG_VERSION:=2.5.5
PKG_RELEASE:=1

PYPI_NAME:=pybind11_stubgen
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pybind11-stubgen
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PEP 561 type stubs generator for pybind11 modules
  URL:=https://github.com/sizmailov/pybind11-stubgen
  DEPENDS:=+python3
endef

define Package/python3-pybind11-stubgen/description
  Static analysis tools and IDE usually struggle to understand python binary extensions. pybind11-stubgen generates stubs for python extensions to make them less opaque.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pybind11-stubgen))
$(eval $(call BuildPackage,python3-pybind11-stubgen))
$(eval $(call BuildPackage,python3-pybind11-stubgen-src))
