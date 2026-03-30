include $(TOPDIR)/rules.mk

PKG_NAME:=python-nanobind
PKG_VERSION:=2.12.0
PKG_RELEASE:=1

PYPI_NAME:=nanobind
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-scikit-build-core/host robin-map
HOST_BUILD_DEPENDS:=python-scikit-build-core/host robin-map/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nanobind
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=nanobind: tiny and efficient C++/Python bindings
  URL:=https://github.com/wjakob/nanobind
  DEPENDS:= \
	+python3-light
endef

define Package/python3-nanobind/description
nanobind is a small binding library that exposes C++ types in Python and vice versa.
endef

PYTHON3_PKG_SETUP_VARS:= \
	CMAKE_ARGS="-DNB_USE_SUBMODULE_DEPS=OFF"

PYTHON3_HOST_BUILD_VARS:= \
	CMAKE_ARGS="-DNB_USE_SUBMODULE_DEPS=OFF"

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nanobind))
$(eval $(call BuildPackage,python3-nanobind))
$(eval $(call BuildPackage,python3-nanobind-src))
