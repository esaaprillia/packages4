include $(TOPDIR)/rules.mk

PKG_NAME:=python-restrictedpython
PKG_VERSION:=8.2
PKG_RELEASE:=1

PYPI_NAME:=restrictedpython
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=ZPL-2.1
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-restrictedpython
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A restricted execution environment
  URL:=https://github.com/zopefoundation/RestrictedPython
  DEPENDS:=+python3-light
endef

define Package/python3-restrictedpython/description
  RestrictedPython is a defined subset of the Python language which
  allows to provide a program input into a trusted environment.
endef

$(eval $(call Py3Package,python3-restrictedpython))
$(eval $(call BuildPackage,python3-restrictedpython))
$(eval $(call BuildPackage,python3-restrictedpython-src))
