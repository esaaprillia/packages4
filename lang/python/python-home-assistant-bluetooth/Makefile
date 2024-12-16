include $(TOPDIR)/rules.mk

PKG_NAME:=python-home-assistant-bluetooth
PKG_VERSION:=1.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=home_assistant_bluetooth
PKG_HASH:=3fa8a0d05a844063501a37e0b98501337e7035623b345d5c285a778e9416fd93

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-home-assistant-bluetooth
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Home Assistant Bluetooth Models and Helpers
  URL:=https://github.com/home-assistant-libs/home-assistant-bluetooth
  DEPENDS:=+python3 +python3-habluetooth
endef

define Package/python3-home-assistant-bluetooth/description
Home Assistant Bluetooth Models and Helpers
endef

$(eval $(call Py3Package,python3-home-assistant-bluetooth))
$(eval $(call BuildPackage,python3-home-assistant-bluetooth))
$(eval $(call BuildPackage,python3-home-assistant-bluetooth-src))
