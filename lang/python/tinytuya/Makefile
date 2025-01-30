include $(TOPDIR)/rules.mk

PKG_NAME:=tinytuya
PKG_VERSION:=1.16.1
PKG_RELEASE:=1

PYPI_NAME:=tinytuya
PKG_SOURCE_URL:=https://github.com/jasonacox/tinytuya/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-colorama/host python-requests/host python-cryptography/host python-cryptodome/host python-pyaes/host python-charset-normalizer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/tinytuya
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python API for Tuya WiFi smart devices using a direct local area network (LAN) connection or the cloud (TuyaCloud API).
  URL:=https://github.com/jasonacox/tinytuya
  DEPENDS:=+python3 +python3-requests +python3-colorama +python3-cryptography +python3-cryptodome +python3-pyaes
endef

define Package/tinytuya/description
This python module controls and reads state of Tuya compatible WiFi Smart Devices (Plugs, Switches, Lights, Window Covers, etc.) using the local area network (LAN) or the cloud (TuyaCloud API).
This is a compatible replacement for the pytuya PyPI module and currently supports Tuya Protocols 3.1, 3.2, 3.3, 3.4 and 3.5.
Tuya devices are designed to communicate with the TuyaCloud but most also expose a local area network API.
This allows us to directly control the devices without using the cloud. This python module provides a way to poll status and issue commands to these devices.
endef

$(eval $(call Py3Package,tinytuya))
$(eval $(call BuildPackage,tinytuya))
$(eval $(call BuildPackage,tinytuya-src))
