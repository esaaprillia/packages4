include $(TOPDIR)/rules.mk

PKG_NAME:=python-hass-nabucasa
PKG_VERSION:=0.88.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=hass_nabucasa
PKG_HASH:=b39fd272eb84915431ff0c691b7de826e3fe48fad95a92c6bb0c39de97c89d09

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hass-nabucasa
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Home Assistant cloud integration by Nabu Casa, Inc.
  URL:=https://github.com/NabuCasa/hass-nabucasa
  DEPENDS:=+python3-light +python3-acme +python3-aiohttp +python3-atomicwrites-homeassistant +python3-attrs +python3-ciso8601 +python3-cryptography +python3-pycognito +python3-pyjwt +python3-snitun +python3-webrtc-models
endef

define Package/python3-hass-nabucasa/description
Cloud integration in Home Assistant
endef

$(eval $(call Py3Package,python3-hass-nabucasa))
$(eval $(call BuildPackage,python3-hass-nabucasa))
$(eval $(call BuildPackage,python3-hass-nabucasa-src))
