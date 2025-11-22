include $(TOPDIR)/rules.mk

PKG_NAME:=python-xiaomi-ble
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=xiaomi_ble
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-xiaomi-ble
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Manage Xiaomi BLE devices
  URL:=https://xiaomi-ble.readthedocs.io/
  DEPENDS:=+python3 +python3-home-assistant-bluetooth +python3-sensor-state-data +python3-bluetooth-sensor-state-data +python3-bleak-retry-connector +python3-bluetooth-data-tools +python3-bleak +python3-cryptography +python3-cryptodomex +python3-aiohttp +python3-orjson
endef

define Package/python3-xiaomi-ble/description
Manage Xiaomi BLE devices
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-xiaomi-ble))
$(eval $(call BuildPackage,python3-xiaomi-ble))
$(eval $(call BuildPackage,python3-xiaomi-ble-src))
