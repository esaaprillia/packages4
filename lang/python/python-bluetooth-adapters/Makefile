include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-adapters
PKG_VERSION:=0.21.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bluetooth_adapters
PKG_HASH:=6840bb235ce51e7f03779126e59e73266ad36893d7ca7d562e6008fde7a17fba

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bluetooth-adapters
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to enumerate and find Bluetooth Adapters
  URL:=https://github.com/bluetooth-devices/bluetooth-adapters
  DEPENDS:=+python3-light +python3-async-timeout +python3-dbus-fast +python3-bleak +python3-usb-devices +python3-aiooui +python3-uart-devices
endef

define Package/python3-bluetooth-adapters/description
Tools to enumerate and find Bluetooth Adapters
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
