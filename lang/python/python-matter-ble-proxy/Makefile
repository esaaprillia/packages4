include $(TOPDIR)/rules.mk

PKG_NAME:=python-matter-ble-proxy
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PYPI_NAME:=matter_ble_proxy
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-matter-ble-proxy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python client library for the OHF Matter Server BLE proxy protocol
  URL:=https://github.com/matter-js/matterjs-server
  DEPENDS:=+python3-light +python3-aiohttp +python3-bleak
endef

define Package/python3-matter-ble-proxy/description
Python client library for the OHF Matter Server BLE proxy WebSocket protocol.
endef

$(eval $(call Py3Package,python3-matter-ble-proxy))
$(eval $(call BuildPackage,python3-matter-ble-proxy))
$(eval $(call BuildPackage,python3-matter-ble-proxy-src))
