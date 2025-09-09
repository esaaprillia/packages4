include $(TOPDIR)/rules.mk

PKG_NAME:=python-tuya-iot-py-sdk
PKG_VERSION:=0.6.6
PKG_RELEASE:=1

PYPI_NAME:=tuya-iot-py-sdk
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-paho-mqtt/host python-requests/host python-cryptodome/host python-websocket-client/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tuya-iot-py-sdk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python sdk for Tuya Open API, which provides IoT capabilities, maintained by Tuya official
  URL:=https://github.com/tuya/tuya-iot-py-sdk
  DEPENDS:=+python3 +python3-paho-mqtt +python3-requests +python3-cryptodome +python3-websocket-client
endef

define Package/python3-tuya-iot-py-sdk/description
A Python sdk for Tuya Open API, which provides basic IoT capabilities like device management, asset management and industry capabilities, helping you create IoT solutions. With diversified devices and industries, Tuya Cloud Development Platform opens basic IoT capabilities like device management, AI scenarios, and data analytics services, as well as industry capabilities, helping you create IoT solutions.
endef

$(eval $(call Py3Package,python3-tuya-iot-py-sdk))
$(eval $(call BuildPackage,python3-tuya-iot-py-sdk))
$(eval $(call BuildPackage,python3-tuya-iot-py-sdk-src))
