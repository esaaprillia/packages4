include $(TOPDIR)/rules.mk

PKG_NAME:=python-scikit-build-core
PKG_VERSION:=0.11.1
PKG_RELEASE:=1

PYPI_NAME:=scikit_build_core
PKG_HASH:=4e5988df5cd33f0bdb9967b72663ca99f50383c9bc21d8b24fa40c0661ae72b7

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scikit-build-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Build backend for CMake based projects
  URL:=https://github.com/scikit-build/scikit-build-core
  DEPENDS:=+python3
endef

define Package/python3-scikit-build-core/description
Scikit-build-core is a build backend for Python that uses CMake to build extension modules. It has a simple yet powerful static configuration system in pyproject.toml,
and supports almost unlimited flexibility via CMake. It was initially developed to support the demanding needs of scientific users, but can build any sort of package that uses CMake.
endef

$(eval $(call Py3Package,python3-scikit-build-core))
$(eval $(call BuildPackage,python3-scikit-build-core))
$(eval $(call BuildPackage,python3-scikit-build-core-src))
$(eval $(call HostBuild))
