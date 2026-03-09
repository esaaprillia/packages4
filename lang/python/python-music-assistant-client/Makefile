include $(TOPDIR)/rules.mk

PKG_NAME:=python-music-assistant-client
PKG_VERSION:=1.3.4
PKG_RELEASE:=1

PYPI_NAME:=music_assistant_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-music-assistant-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Music Assistant Client
  URL:=https://github.com/music-assistant/client
  DEPENDS:=+python3 +python3-aiohttp +python3-music-assistant-models +python3-orjson
endef

define Package/python3-music-assistant-client/description
Python client to interact with the Music Assistant Server API
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-music-assistant-client))
$(eval $(call BuildPackage,python3-music-assistant-client))
$(eval $(call BuildPackage,python3-music-assistant-client-src))
