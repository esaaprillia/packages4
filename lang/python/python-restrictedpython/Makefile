include $(TOPDIR)/rules.mk

PKG_NAME:=python-restrictedpython
PKG_VERSION:=7.4
PKG_RELEASE:=1

PYPI_NAME:=restrictedpython
PKG_HASH:=81b62924713dbd280917fceaecaf210fef7a49dddf1a08c8c214a3613fbeb425

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=ZPL-2.1
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE.txt

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

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

PYTHON3_PKG_WHEEL_NAME:=RestrictedPython
PYTHON3_PKG_WHEEL_VERSION:=7.4

$(eval $(call Py3Package,python3-restrictedpython))
$(eval $(call BuildPackage,python3-restrictedpython))
$(eval $(call BuildPackage,python3-restrictedpython-src))
