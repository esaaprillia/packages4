include $(TOPDIR)/rules.mk

PKG_NAME:=python-tuya-device-sharing-sdk
PKG_VERSION:=0.2.4
PKG_RELEASE:=1

PYPI_NAME:=tuya-device-sharing-sdk
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_FLAGS:=no-lto
PKG_BUILD_DEPENDS:=python-requests/host python-cryptography/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tuya-device-sharing-sdk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python sdk for Tuya Open API, which provides IoT capabilities, maintained by Tuya official
  URL:=https://github.com/tuya/tuya-device-sharing-sdk
  DEPENDS:=+python3 +python3-paho-mqtt +python3-requests +python3-cryptography
endef

define Package/python3-tuya-device-sharing-sdk/description
A Python sdk for Tuya Open API, which provides basic IoT capabilities like device management capabilities, helping you create IoT solutions. With diversified devices and industries, Tuya IoT Development Platform opens basic IoT capabilities like device management, AI scenarios, and data analytics services, as well as industry capabilities, helping you create IoT solutions.
endef

$(eval $(call Py3Package,python3-tuya-device-sharing-sdk))
$(eval $(call BuildPackage,python3-tuya-device-sharing-sdk))
$(eval $(call BuildPackage,python3-tuya-device-sharing-sdk-src))
