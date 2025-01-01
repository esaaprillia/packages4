include $(TOPDIR)/rules.mk

PKG_NAME:=python-scikit-build
PKG_VERSION:=0.18.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=scikit_build
PKG_HASH:=a4152ac5a084d499c28a7797be0628d8366c336e2fb0e1a063eb32e55efcb8e7

HOST_BUILD_DEPENDS:=python-distro/host python-hatchling/host python-hatch-vcs/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scikit-build
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Improved build system generator for Python C/C++/Fortran/Cython extensions
  URL:=https://github.com/scikit-build/scikit-build
  DEPENDS:=+python3
endef

define Package/python3-scikit-build/description
scikit-build is a Python build system for CPython C/C++/Fortran/Cython extensions using CMake.
The scikit-build package is fundamentally just glue between the setuptools Python module and CMake.
endef

$(eval $(call Py3Package,python3-scikit-build))
$(eval $(call BuildPackage,python3-scikit-build))
$(eval $(call BuildPackage,python3-scikit-build-src))
$(eval $(call HostBuild))
