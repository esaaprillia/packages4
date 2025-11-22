include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-sensor-state-data
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=bluetooth_sensor_state_data
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bluetooth-sensor-state-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Models for storing and converting Bluetooth Sensor State Data
  URL:=https://bluetooth-sensor-state-data.readthedocs.io/
  DEPENDS:=+python3 +python3-sensor-state-data +python3-bluetooth-data-tools +python3-habluetooth
endef

define Package/python3-bluetooth-sensor-state-data/description
Models for storing and converting Bluetooth Sensor State Data
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bluetooth-sensor-state-data))
$(eval $(call BuildPackage,python3-bluetooth-sensor-state-data))
$(eval $(call BuildPackage,python3-bluetooth-sensor-state-data-src))
