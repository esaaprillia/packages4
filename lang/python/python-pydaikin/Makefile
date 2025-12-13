include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydaikin
PKG_VERSION:=2.17.1
PKG_RELEASE:=1

PYPI_NAME:=pydaikin
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pydaikin
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Daikin HVAC appliances interface
  URL:=https://github.com/fredrike/pydaikin
  DEPENDS:=+python3 +python3-netifaces +python3-aiohttp +python3-urllib3 +python3-tenacity
endef

define Package/python3-pydaikin/description
PyDaikin is a standalone program and a library that interface AirConditioners from Daikin.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pydaikin))
$(eval $(call BuildPackage,python3-pydaikin))
$(eval $(call BuildPackage,python3-pydaikin-src))
