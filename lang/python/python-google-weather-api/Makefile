include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-weather-api
PKG_VERSION:=0.0.6
PKG_RELEASE:=1

PYPI_NAME:=python_google_weather_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-weather-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A python client library for Google Weather API
  URL:=https://github.com/tronikos/python-google-weather-api
  DEPENDS:=+python3 +python3-aiohttp +python3-mashumaro
endef

define Package/python3-google-weather-api/description
A python client library for Google Weather API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-weather-api))
$(eval $(call BuildPackage,python3-google-weather-api))
$(eval $(call BuildPackage,python3-google-weather-api-src))
