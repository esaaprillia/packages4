include $(TOPDIR)/rules.mk

PKG_NAME:=python-opower
PKG_VERSION:=0.15.9
PKG_RELEASE:=1

PYPI_NAME:=opower
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opower
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python library for getting historical and forecasted usage/cost from utilities that use opower.com such as PG&E
  URL:=https://github.com/tronikos/opower
  DEPENDS:=+python3 +python3-aiohttp +python3-aiozoneinfo +python3-arrow +python3-pyotp
endef

define Package/python3-opower/description
A Python library and command-line tool for getting historical and forecasted usage/cost data from utilities that use opower.com.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opower))
$(eval $(call BuildPackage,python3-opower))
$(eval $(call BuildPackage,python3-opower-src))
