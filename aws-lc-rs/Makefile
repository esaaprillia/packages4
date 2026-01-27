include $(TOPDIR)/rules.mk

PKG_NAME:=python-esphome-dashboard
PKG_VERSION:=20260110.0
PKG_RELEASE:=1

PYPI_NAME:=esphome_dashboard
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-esphome-dashboard
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ESPHome dashboard and ESPHome Web
  URL:=https://github.com/esphome/dashboard
  DEPENDS:=+python3
endef

define Package/python3-esphome-dashboard/description
The ESPHome Device Builder is a user facing dashboard embedded in ESPHome. It allows users to easily create and manage their configurations
endef

$(eval $(call Py3Package,python3-esphome-dashboard))
$(eval $(call BuildPackage,python3-esphome-dashboard))
$(eval $(call BuildPackage,python3-esphome-dashboard-src))
