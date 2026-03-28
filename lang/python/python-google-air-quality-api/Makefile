include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-air-quality-api
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PYPI_NAME:=google_air_quality_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-air-quality-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module to talk to Google Air Quality API.
  URL:=https://github.com/Thomas55555/python-google-air-quality-api
  DEPENDS:=+python3 +python3-aiohttp +python3-mashumaro
endef

define Package/python3-google-air-quality-api/description
The Google Google Air API allows to get air qulaity information. See Google Air Quality APIs for more details on how to integrate Google Air Quality with your application.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-air-quality-api))
$(eval $(call BuildPackage,python3-google-air-quality-api))
$(eval $(call BuildPackage,python3-google-air-quality-api-src))
