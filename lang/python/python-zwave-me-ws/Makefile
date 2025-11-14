include $(TOPDIR)/rules.mk

PKG_NAME:=python-zwave-me-ws
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=zwave_me_ws
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zwave-me-ws
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for connecting to Z-Wave.Me WebSocket API
  URL:=https://github.com/Z-Wave-Me/zwave-me-ws
  DEPENDS:=+python3 +python3-websocket-client +python3-requests
endef

define Package/python3-zwave-me-ws/description
ZWave-Me-WS is a websocket connection library for Z-Wave.Me Z-Way controllers
endef

$(eval $(call Py3Package,python3-zwave-me-ws))
$(eval $(call BuildPackage,python3-zwave-me-ws))
$(eval $(call BuildPackage,python3-zwave-me-ws-src))
