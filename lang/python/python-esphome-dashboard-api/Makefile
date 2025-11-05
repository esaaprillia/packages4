include $(TOPDIR)/rules.mk

PKG_NAME:=python-esphome-dashboard-api
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=esphome_dashboard_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-esphome-dashboard-api
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API to interact with ESPHome Dashboard
  URL:=https://github.com/esphome/dashboard-api
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-esphome-dashboard-api/description
Python package to interact with the ESPHome dashboard.
endef

$(eval $(call Py3Package,python3-esphome-dashboard-api))
$(eval $(call BuildPackage,python3-esphome-dashboard-api))
$(eval $(call BuildPackage,python3-esphome-dashboard-api-src))
