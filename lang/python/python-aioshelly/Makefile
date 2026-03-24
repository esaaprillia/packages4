include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioshelly
PKG_VERSION:=13.23.1
PKG_RELEASE:=1

PYPI_NAME:=aioshelly
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aioshelly
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous library to control Shelly devices
  URL:=https://github.com/home-assistant-libs/aioshelly
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-aiohttp \
	+python3-bleak-retry-connector \
	+python3-bluetooth-data-tools \
	+python3-habluetooth \
	+python3-orjson \
	+python3-yarl \
	+python3-zeroconf
endef

define Package/python3-aioshelly/description
  Asynchronous library to control Shelly devices.
endef

$(eval $(call Py3Package,python3-aioshelly))
$(eval $(call BuildPackage,python3-aioshelly))
$(eval $(call BuildPackage,python3-aioshelly-src))
