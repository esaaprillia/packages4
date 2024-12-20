include $(TOPDIR)/rules.mk

PKG_NAME:=python-mypy-extensions
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mypy_extensions
PKG_HASH:=75dbf8955dc00442a438fc4d0666508a9a97b6bd41aa2f0ffe9d2f2725af0782

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mypy-extensions
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Type system extensions for programs checked with the mypy type checker.
  URL:=https://github.com/python/mypy_extensions
  DEPENDS:=+python3
endef

define Package/python3-mypy-extensions/description
The mypy_extensions module defines extensions to the Python standard library typing module that are supported by the mypy type checker and the mypyc compiler.
endef

$(eval $(call Py3Package,python3-mypy-extensions))
$(eval $(call BuildPackage,python3-mypy-extensions))
$(eval $(call BuildPackage,python3-mypy-extensions-src))
