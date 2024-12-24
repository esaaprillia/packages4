include $(TOPDIR)/rules.mk

PKG_NAME:=python-home-assistant-frontend
PKG_VERSION:=20241223.1
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_frontend
PKG_SOURCE_URL:=https://github.com/home-assistant/frontend/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-home-assistant-frontend
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Frontend for Home Assistant
  URL:=https://github.com/home-assistant/frontend
  DEPENDS:=+python3-light
endef

define Package/python3-home-assistant-frontend/description
This is the repository for the official Home Assistant frontend.
endef

$(eval $(call Py3Package,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend))
$(eval $(call BuildPackage,python3-home-assistant-frontend-src))
