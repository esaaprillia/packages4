include $(TOPDIR)/rules.mk

PKG_NAME:=sonoff
PKG_VERSION:=3.9.3
PKG_RELEASE:=1

PYPI_NAME:=SonoffLAN
PKG_SOURCE_URL:=https://github.com/AlexxIT/SonoffLAN/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/sonoff
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Control Sonoff Devices from Home Assistant
  URL:=https://github.com/AlexxIT/SonoffLAN
  DEPENDS:=+python3 +python3-cryptodome
endef

define Package/sonoff/description
Control Sonoff Devices with eWeLink (original) firmware over LAN and/or Cloud from Home Assistant
endef

PYTHON3_PKG_WHEEL_NAME:=sonoff
PYTHON3_PKG_WHEEL_VERSION:=3.9.3

$(eval $(call Py3Package,sonoff))
$(eval $(call BuildPackage,sonoff))
$(eval $(call BuildPackage,sonoff-src))
