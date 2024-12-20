include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-setuptools
PKG_VERSION:=75.6.0.20241126
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=types_setuptools
PKG_HASH:=7bf25ad4be39740e469f9268b6beddda6e088891fa5a27e985c6ce68bf62ace0

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-types-setuptools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typing stubs for setuptools
  URL:=https://github.com/python/typeshed
  DEPENDS:=+python3
endef

define Package/python3-types-setuptools/description
This is a PEP 561 type stub package for the setuptools package. It can be used by type-checking tools like mypy, pyright, pytype, Pyre, PyCharm, etc. to check code that uses setuptools. This version of types-setuptools aims to provide accurate annotations for setuptools==75.6.*.
If using setuptools >= 71.1 only for pkg_resources, you don't need types-setuptools since pkg_resources is now typed.
This package is part of the typeshed project. All fixes for types and metadata should be contributed there. See the README for more details. The source for this package can be found in the stubs/setuptools directory.
This package was tested with mypy 1.13.0, pyright 1.1.389, and pytype 2024.10.11. It was generated from typeshed commit 410081e820b2ec9f17b4d3d2221977563c64407e.
endef

$(eval $(call Py3Package,python3-types-setuptools))
$(eval $(call BuildPackage,python3-types-setuptools))
$(eval $(call BuildPackage,python3-types-setuptools-src))
$(eval $(call HostBuild))
