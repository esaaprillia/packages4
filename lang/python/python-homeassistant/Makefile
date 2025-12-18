include $(TOPDIR)/rules.mk

PKG_NAME:=python-homeassistant
PKG_VERSION:=2025.12.3
PKG_RELEASE:=2

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=homeassistant
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-homeassistant
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Open-source home automation platform running on Python 3.
  URL:=https://www.home-assistant.io/
  DEPENDS:=+python3
endef

define Package/python3-homeassistant/description
Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
endef

define Package/python3-homeassistant/conffiles
/etc/homeassistant/
endef

define Py3Package/python3-homeassistant/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/hass.init $(1)/etc/init.d/hass
endef

$(eval $(call Py3Package,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant-src))
