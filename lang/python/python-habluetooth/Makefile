include $(TOPDIR)/rules.mk

PKG_NAME:=python-habluetooth
PKG_VERSION:=3.12.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=habluetooth
PKG_HASH:=3e0f45918fef549326207414d34bddca39985b7328513b6a38cb1a4c29011606

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-habluetooth
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High availability Bluetooth
  URL:=https://github.com/bluetooth-devices/habluetooth
  DEPENDS:=+python3-light +python3-bleak +python3-bleak-retry-connector +python3-bluetooth-data-tools +python3-bluetooth-adapters +python3-bluetooth-auto-recovery +python3-async-interrupt
endef

define Package/python3-habluetooth/description
High availability Bluetooth
endef

$(eval $(call Py3Package,python3-habluetooth))
$(eval $(call BuildPackage,python3-habluetooth))
$(eval $(call BuildPackage,python3-habluetooth-src))
