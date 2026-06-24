include $(TOPDIR)/rules.mk

PKG_NAME:=python-infrared-protocols
PKG_VERSION:=6.3.0
PKG_RELEASE:=1

PYPI_NAME:=infrared_protocols
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-infrared-protocols
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library to decode and encode infrared signals.
  URL:=https://github.com/home-assistant-libs/infrared-protocols
  DEPENDS:= \
	+python3-light
endef

define Package/python3-infrared-protocols/description
Python package to decode and encode infrared signals for use in Home Assistant.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-infrared-protocols))
$(eval $(call BuildPackage,python3-infrared-protocols))
$(eval $(call BuildPackage,python3-infrared-protocols-src))
