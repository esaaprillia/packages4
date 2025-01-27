include $(TOPDIR)/rules.mk

PKG_NAME:=python-sense-energy
PKG_VERSION:=0.13.5
PKG_RELEASE:=1

PYPI_NAME:=sense_energy
PKG_HASH:=a468ad415cfbcf9527245ac312e7096b18480b20b28c8895a853a6484380351c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-sense-energy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API for the Sense Energy Monitor
  URL:=https://github.com/scottbonline/sense
  DEPENDS:=+python3 +python3-async-timeout +python3-ciso8601 +python3-orjson +python3-requests +python3-websocket-client +python3-websockets +python3-aiohttp +python3-kasa-crypt
endef

define Package/python3-sense-energy/description
Sense Energy Monitor API Interface
endef

$(eval $(call Py3Package,python3-sense-energy))
$(eval $(call BuildPackage,python3-sense-energy))
$(eval $(call BuildPackage,python3-sense-energy-src))
