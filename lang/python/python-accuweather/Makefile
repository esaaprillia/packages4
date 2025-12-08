include $(TOPDIR)/rules.mk

PKG_NAME:=python-accuweather
PKG_VERSION:=4.2.2
PKG_RELEASE:=1

PYPI_NAME:=accuweather
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-accuweather
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for getting weather data from AccuWeather API.
  URL:=https://github.com/bieniu/accuweather
  DEPENDS:=+python3 +python3-aiohttp +python3-orjson
endef

define Package/python3-accuweather/description
Python wrapper for getting weather data from AccuWeather API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-accuweather))
$(eval $(call BuildPackage,python3-accuweather))
$(eval $(call BuildPackage,python3-accuweather-src))
