include $(TOPDIR)/rules.mk

PKG_NAME:=python-sonos-websocket
PKG_VERSION:=0.1.3
PKG_RELEASE:=1

PYPI_NAME:=sonos-websocket
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sonos-websocket
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An asynchronous Python library to communicate with Sonos devices over websockets.
  URL:=https://github.com/jjlawren/sonos-websocket
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-sonos-websocket/description
An asynchronous Python library to communicate with Sonos devices over websockets.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sonos-websocket))
$(eval $(call BuildPackage,python3-sonos-websocket))
$(eval $(call BuildPackage,python3-sonos-websocket-src))
