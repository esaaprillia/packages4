include $(TOPDIR)/rules.mk

PKG_NAME:=python-pubnub
PKG_VERSION:=9.1.0
PKG_RELEASE:=1

PYPI_NAME:=pubnub
PKG_HASH:=72fc0e0ee9f5073329bff4091e518bc698f55e454810225f2a673d44a669436c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pubnub
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Real-time push service in the cloud
  URL:=http://pubnub.com/
  DEPENDS:= \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-cbor2 \
	+python3-cryptodomex \
	+python3-logging \
	+python3-requests \
	+python3-urllib \
	+python3-yarl
endef

define Package/python3-pubnub/description
  PubNub Real-time push service in the cloud.
endef

$(eval $(call Py3Package,python3-pubnub))
$(eval $(call BuildPackage,python3-pubnub))
$(eval $(call BuildPackage,python3-pubnub-src))
