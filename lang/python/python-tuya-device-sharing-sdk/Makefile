include $(TOPDIR)/rules.mk

PKG_NAME:=python-tuya-device-sharing-sdk
PKG_VERSION:=0.2.4
PKG_RELEASE:=1

#PYPI_NAME:=tuya-device-sharing-sdk
#PKG_HASH:=skip

PYPI_NAME:=tuya_device_sharing_sdk
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/96/5b/a49bdb92fcca74ff46beb2d29b1b57f190e52fc338574f80d41691d7d73c/
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

#PKG_BUILD_DEPENDS:=python-requests/host python-paho-mqtt/host python-cryptography/host

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

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

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/openwrt-build
	$(CP) $(DL_DIR)/$(PKG_SOURCE) $(PKG_BUILD_DIR)/openwrt-build
endef

Build/Compile:=:

$(eval $(call Py3Package,python3-tuya-device-sharing-sdk))
$(eval $(call BuildPackage,python3-tuya-device-sharing-sdk))
$(eval $(call BuildPackage,python3-tuya-device-sharing-sdk-src))
