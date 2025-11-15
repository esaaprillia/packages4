include $(TOPDIR)/rules.mk

PKG_NAME:=python-knx-frontend
PKG_VERSION:=2025.10.31.195356
PKG_RELEASE:=1

PYPI_NAME:=knx_frontend
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-knx-frontend
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=KNX panel for Home Assistant
  URL:=https://github.com/XKNX/knx-frontend
  DEPENDS:=+python3
endef

define Package/python3-knx-frontend/description
This is the KNX panel for the KNX core integration in Home Assistant. It provides a user interface for interacting with the KNX integration.
endef

$(eval $(call Py3Package,python3-knx-frontend))
$(eval $(call BuildPackage,python3-knx-frontend))
$(eval $(call BuildPackage,python3-knx-frontend-src))
