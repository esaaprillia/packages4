include $(TOPDIR)/rules.mk

PKG_NAME:=python-types-python-dateutil
PKG_VERSION:=2.9.0.20241206
PKG_RELEASE:=1

PYPI_NAME:=types_python_dateutil
PKG_HASH:=18f493414c26ffba692a72369fea7a154c502646301ebfe3d56a04b3767284cb

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-types-python-dateutil
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Typing stubs for python-dateutil
  URL:=https://github.com/python/typeshed
  DEPENDS:=+python3
endef

define Package/python3-types-python-dateutil/description
This is a PEP 561 type stub package for the python-dateutil package. It can be used by type-checking tools like mypy, pyright, pytype, Pyre, PyCharm, etc. to check code that uses python-dateutil. This version of types-python-dateutil aims to provide accurate annotations for python-dateutil==2.9.*.
endef

$(eval $(call Py3Package,python3-types-python-dateutil))
$(eval $(call BuildPackage,python3-types-python-dateutil))
$(eval $(call BuildPackage,python3-types-python-dateutil-src))
