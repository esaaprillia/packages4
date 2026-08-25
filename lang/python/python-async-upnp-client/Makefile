include $(TOPDIR)/rules.mk

PKG_NAME:=python-async-upnp-client
PKG_VERSION:=0.48.1
PKG_RELEASE:=1

PYPI_NAME:=async_upnp_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-async-upnp-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async UPnP Client for Python
  URL:=https://github.com/StevenLooman/async_upnp_client
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-defusedxml \
	+python3-didl-lite \
	+python3-voluptuous
endef

define Package/python3-async-upnp-client/description
Asyncio UPnP Client library for Python/asyncio.
Written initially for use in Home Assistant to drive DLNA DMR-capable devices, but useful for other projects as well.
endef

$(eval $(call Py3Package,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client))
$(eval $(call BuildPackage,python3-async-upnp-client-src))
