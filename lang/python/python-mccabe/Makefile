include $(TOPDIR)/rules.mk

PKG_NAME:=python-mccabe
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mccabe
PKG_HASH:=348e0240c33b60bbdf4e523192ef919f28cb2c3d7d5c7794f74009290f236325

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mccabe
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=McCabe checker, plugin for flake8
  URL:=http://pypi.python.org/pypi/mccabe
  DEPENDS:=+python3
endef

define Package/python3-mccabe/description
Ned’s script to check McCabe complexity.
This module provides a plugin for flake8, the Python code checker.
endef

$(eval $(call Py3Package,python3-mccabe))
$(eval $(call BuildPackage,python3-mccabe))
$(eval $(call BuildPackage,python3-mccabe-src))
