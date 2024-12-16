include $(TOPDIR)/rules.mk

PKG_NAME:=python-habluetooth
PKG_VERSION:=3.6.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=habluetooth
PKG_HASH:=df79914d9037456b370ba790bac71ca23fd16871c202aac93df5f800119137e6

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-habluetooth
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High availability Bluetooth
  URL:=https://github.com/bluetooth-devices/habluetooth
  DEPENDS:=+python3 +python3-async-interrupt +python3-bleak +python3-bleak-retry-connector +python3-bluetooth-adapters +python3-bluetooth-auto-recovery +python3-bluetooth-data-tools
endef

define Package/python3-habluetooth/description
High availability Bluetooth
endef

$(eval $(call Py3Package,python3-habluetooth))
$(eval $(call BuildPackage,python3-habluetooth))
$(eval $(call BuildPackage,python3-habluetooth-src))
