include $(TOPDIR)/rules.mk

PKG_NAME:=python-hass-home-assistant-frontend
PKG_VERSION:=20200427.3
PKG_RELEASE:=1

PYPI_NAME:=hass-home-assistant-frontend
PKG_HASH:=202a13207314e35be1c2ca7324200e63d5e1f7d30051c72c8cde10a2fb703ca8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hass-home-assistant-frontend
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The HaaS version of Home Assistant frontend
  URL:=https://gitlab.svccomp.de/svccomp-students/entwicklungsprojekt/2020/haas-human-as-a-sensor/home-assistant-frontend
  DEPENDS:=+python3
endef

define Package/python3-hass-home-assistant-frontend/description
The HaaS version of Home Assistant frontend
endef

$(eval $(call Py3Package,python3-hass-home-assistant-frontend))
$(eval $(call BuildPackage,python3-hass-home-assistant-frontend))
$(eval $(call BuildPackage,python3-hass-home-assistant-frontend-src))
