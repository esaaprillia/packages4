include $(TOPDIR)/rules.mk

PKG_NAME:=python-sensor-state-data
PKG_VERSION:=2.20.0
PKG_RELEASE:=1

PYPI_NAME:=sensor_state_data
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

define Package/python3-sensor-state-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Models for storing and converting Sensor Data state
  URL:=https://sensor-state-data.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-sensor-state-data/description
Models for storing and converting Sensor Data state
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sensor-state-data))
$(eval $(call BuildPackage,python3-sensor-state-data))
$(eval $(call BuildPackage,python3-sensor-state-data-src))
