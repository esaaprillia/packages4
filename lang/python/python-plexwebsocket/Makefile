include $(TOPDIR)/rules.mk

PKG_NAME:=python-plexwebsocket
PKG_VERSION:=0.0.14
PKG_RELEASE:=1

PYPI_NAME:=plexwebsocket
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-plexwebsocket
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Support for issuing callbacks in response to Plex websocket updates.
  URL:=https://github.com/jjlawren/python-plexwebsocket/
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-plexwebsocket/description
Async library to react to events issued over Plex websockets.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-plexwebsocket))
$(eval $(call BuildPackage,python3-plexwebsocket))
$(eval $(call BuildPackage,python3-plexwebsocket-src))
