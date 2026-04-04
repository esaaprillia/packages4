include $(TOPDIR)/rules.mk

PKG_NAME:=spotifyplus
PKG_VERSION:=1.0.200
PKG_RELEASE:=1

PYPI_NAME:=homeassistantcomponent_spotifyplus
PKG_SOURCE_URL:=https://github.com/thlucas1/homeassistantcomponent_spotifyplus/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/spotifyplus
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Home Assistant integration for Spotify Player control, services, and soundtouchplus integration support.
  URL:=https://github.com/thlucas1/homeassistantcomponent_spotifyplus
  DEPENDS:=+python3
endef

define Package/spotifyplus/description
Home Assistant Integration to integrate with spotifyplus.
Extended support for the Spotify Connect media player for use in Home Assistant.
endef

PYTHON3_PKG_WHEEL_NAME:=spotifyplus
PYTHON3_PKG_WHEEL_VERSION:=1.0.200

define Py3Package/spotifyplus/install
	$(INSTALL_DIR) $(1)/etc/homeassistant
	$(CP) $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/custom_components $(1)/etc/homeassistant/
endef

$(eval $(call Py3Package,spotifyplus))
$(eval $(call BuildPackage,spotifyplus))
$(eval $(call BuildPackage,spotifyplus-src))
