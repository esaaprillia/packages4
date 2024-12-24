include $(TOPDIR)/rules.mk

PKG_NAME:=python-async-upnp-client
PKG_VERSION:=0.42.0
PKG_RELEASE:=1

PYPI_NAME:=async_upnp_client
PKG_HASH:=558ec3f981ca04c33cce13d9ef77391f21f4fc8d35ee12b7698f8760887c9b7d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-async-upnp-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async UPnP Client for Python
  URL:=https://github.com/StevenLooman/async_upnp_client
  DEPENDS:=+python3 +python3-voluptuous +python3-aiohttp +python3-async-timeout +python3-didl-lite +python3-defusedxml
endef

define Package/python3-async-upnp-client/description
Asyncio UPnP Client library for Python/asyncio.
Written initially for use in Home Assistant to drive DLNA DMR-capable devices, but useful for other projects as well.
endef

$(eval $(call Py3Package,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client-src))
