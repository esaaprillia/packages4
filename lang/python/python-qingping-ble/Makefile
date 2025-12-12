include $(TOPDIR)/rules.mk

PKG_NAME:=python-qingping-ble
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PYPI_NAME:=qingping_ble
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-qingping-ble
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Qingping BLE support
  URL:=https://qingping-ble.readthedocs.io/
  DEPENDS:=+python3 +python3-bluetooth-sensor-state-data +python3-sensor-state-data +python3-bluetooth-data-tools
endef

define Package/python3-qingping-ble/description
Qingping BLE support
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-qingping-ble))
$(eval $(call BuildPackage,python3-qingping-ble))
$(eval $(call BuildPackage,python3-qingping-ble-src))
