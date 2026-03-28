include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytibber
PKG_VERSION:=0.36.0
PKG_RELEASE:=1

PYPI_NAME:=pytibber
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pytibber
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A python3 library to communicate with Tibber
  URL:=https://github.com/Danielhiversen/pyTibber
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp \
	+python3-gql \
	+python3-websockets
endef

define Package/python3-pytibber/description
Get electricity price and consumption.
endef

$(eval $(call Py3Package,python3-pytibber))
$(eval $(call BuildPackage,python3-pytibber))
$(eval $(call BuildPackage,python3-pytibber-src))
