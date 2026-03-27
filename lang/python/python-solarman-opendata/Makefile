include $(TOPDIR)/rules.mk

PKG_NAME:=python-solarman-opendata
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=solarman_opendata
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-solarman-opendata
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous Python API for Solarman devices
  URL:=https://github.com/solarmanpv/solarman-opendata
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp
endef

define Package/python3-solarman-opendata/description
Python client for interacting with Solarman devices over local network.
endef

$(eval $(call Py3Package,python3-solarman-opendata))
$(eval $(call BuildPackage,python3-solarman-opendata))
$(eval $(call BuildPackage,python3-solarman-opendata-src))
