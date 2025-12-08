include $(TOPDIR)/rules.mk

PKG_NAME:=python-buienradar
PKG_VERSION:=1.0.9
PKG_RELEASE:=1

PYPI_NAME:=buienradar
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-buienradar
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library and CLI tools for interacting with buienradar.
  URL:=https://github.com/mjj4791/python-buienradar
  DEPENDS:=+python3 +python3-docopt +python3-pytz +python3-requests +python3-xmltodict +python3-vincenty
endef

define Package/python3-buienradar/description
This package is created as a library for the Home assistant buienradar component implementation.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-buienradar))
$(eval $(call BuildPackage,python3-buienradar))
$(eval $(call BuildPackage,python3-buienradar-src))
