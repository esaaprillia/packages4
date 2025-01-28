include $(TOPDIR)/rules.mk

PKG_NAME:=python-zigpy
PKG_VERSION:=0.75.1
PKG_RELEASE:=1

PYPI_NAME:=zigpy
PKG_HASH:=b2851f4a4f432fac5db7bf0cc10c3fae09728e64a14e0c0089b808a7eb4d54d1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zigpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library implementing a Zigbee stack
  URL:=https://github.com/zigpy/zigpy
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-sqlite3 \
	+python3-urllib \
	+python3-attrs \
	+python3-aiohttp \
	+python3-aiosqlite \
	+python3-async-timeout \
	+python3-crccheck \
	+python3-cryptography \
	+python3-pyserial-asyncio \
	+python3-typing-extensions \
	+python3-voluptuous \
	+python3-jsonschema \
	+python3-frozendict
endef

define Package/python3-zigpy/description
  zigpy is a hardware independent Zigbee protocol stack integration project
  to implement Zigbee standard specifications as a Python 3 library.
endef

$(eval $(call Py3Package,python3-zigpy))
$(eval $(call BuildPackage,python3-zigpy))
$(eval $(call BuildPackage,python3-zigpy-src))
