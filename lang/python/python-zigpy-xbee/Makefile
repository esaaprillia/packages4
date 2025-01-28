include $(TOPDIR)/rules.mk

PKG_NAME:=python-zigpy-xbee
PKG_VERSION:=0.21.0
PKG_RELEASE:=1

PYPI_NAME:=zigpy_xbee
PKG_HASH:=63f9f06e864f58fd4b2c6c0b0ef00b126e6711faf6ccba4ec9c610f0f51c8d3e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zigpy-xbee
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library which communicates with XBee radios
  URL:=https://github.com/zigpy/zigpy-xbee
  DEPENDS:=+python3-asyncio +python3-logging +python3-zigpy
endef

define Package/python3-zigpy-xbee/description
  zigpy-xbee is a Python implementation for the Zigpy project
  to implement XBee based Zigbee radio devices from Digi.
endef

$(eval $(call Py3Package,python3-zigpy-xbee))
$(eval $(call BuildPackage,python3-zigpy-xbee))
$(eval $(call BuildPackage,python3-zigpy-xbee-src))
