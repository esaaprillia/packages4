include $(TOPDIR)/rules.mk

PKG_NAME:=python-samsungtvws
PKG_VERSION:=2.7.2
PKG_RELEASE:=1

PYPI_NAME:=samsungtvws
PKG_HASH:=106d89df70c9fff8a23089af223244c077260e83326ef8b2e5c9fa8d2706f25f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-samsungtvws
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Samsung Smart TV WS API wrapper
  URL:=https://github.com/xchwarze/samsung-tv-ws-api
  DEPENDS:=+python3 +python3-websocket-client +python3-requests +python3-aiohttp +python3-websockets +python3-cryptography +python3-py3rijndael
endef

define Package/python3-samsungtvws/description
This project is a library for remote controlling Samsung televisions via a TCP/IP connection.
It currently supports modern (post-2016) TVs with Ethernet or Wi-Fi connectivity. They should be all models with TizenOs.
Based on https://github.com/marysieek/samsung-tv-api work
endef

$(eval $(call Py3Package,python3-samsungtvws))
$(eval $(call BuildPackage,python3-samsungtvws))
$(eval $(call BuildPackage,python3-samsungtvws-src))
