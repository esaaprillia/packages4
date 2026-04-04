include $(TOPDIR)/rules.mk

PKG_NAME:=meshtastic
PKG_VERSION:=0.6.1
PKG_RELEASE:=1

PYPI_NAME:=home-assistant
PKG_SOURCE_URL:=https://github.com/meshtastic/home-assistant/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/meshtastic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Home Assistant Integration for Meshtastic
  URL:=https://github.com/meshtastic/home-assistant
  DEPENDS:=+python3 +python3-pyserial-asyncio +python3-aiomqtt
endef

define Package/meshtastic/description
Home Assistant Integration for Meshtastic
endef

PYTHON3_PKG_WHEEL_NAME:=meshtastic
PYTHON3_PKG_WHEEL_VERSION:=0.6.1

define Py3Package/meshtastic/install
	$(INSTALL_DIR) $(1)/etc/homeassistant
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/custom_components $(1)/etc/homeassistant/
endef

$(eval $(call Py3Package,meshtastic))
$(eval $(call BuildPackage,meshtastic))
$(eval $(call BuildPackage,meshtastic-src))
