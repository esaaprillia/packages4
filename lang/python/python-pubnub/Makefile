include $(TOPDIR)/rules.mk

PKG_NAME:=python-pubnub
PKG_VERSION:=10.0.0
PKG_RELEASE:=1

PYPI_NAME:=pubnub
PKG_HASH:=010d0801d75d7480f7e30655252fcd54da4dc9f75568df832936d9d896181351

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
