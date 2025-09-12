include $(TOPDIR)/rules.mk

PKG_NAME:=python-mypy-extensions
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mypy_extensions
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

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
$(eval $(call HostBuild))

