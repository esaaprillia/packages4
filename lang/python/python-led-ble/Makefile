include $(TOPDIR)/rules.mk

PKG_NAME:=python-led-ble
PKG_VERSION:=1.1.4
PKG_RELEASE:=1

PYPI_NAME:=led_ble
PKG_HASH:=4c4ebaae5c8b2fd9636b5aa2a9530857bcbcff472f2f3f516fe956deb33162c6

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-led-ble
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Control a wide range of LED BLE devices
  URL:=https://github.com/bluetooth-devices/led-ble
  DEPENDS:=+python3
endef

define Package/python3-led-ble/description
Control a wide range of LED BLE devices
endef

$(eval $(call Py3Package,python3-led-ble))
$(eval $(call BuildPackage,python3-led-ble))
$(eval $(call BuildPackage,python3-led-ble-src))
