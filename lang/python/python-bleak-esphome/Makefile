include $(TOPDIR)/rules.mk

PKG_NAME:=python-bleak-esphome
PKG_VERSION:=2.1.1
PKG_RELEASE:=1

PYPI_NAME:=bleak_esphome
PKG_HASH:=6858c42406776d5344716bb27f0a6c4c104f8be65e3554ee163d4b189cf6c7e7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bleak-esphome
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Bleak backend of ESPHome
  URL:=https://github.com/Bluetooth-Devices/bleak-esphome
  DEPENDS:=+python3 +python3-aioesphomeapi +python3-bleak +python3-bluetooth-data-tools +python3-habluetooth +python3-lru-dict +python3-bleak-retry-connector
endef

define Package/python3-bleak-esphome/description
Bleak backend of ESPHome
endef

$(eval $(call Py3Package,python3-bleak-esphome))
$(eval $(call BuildPackage,python3-bleak-esphome))
$(eval $(call BuildPackage,python3-bleak-esphome-src))
