include $(TOPDIR)/rules.mk

PKG_NAME:=python-open-meteo
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=open_meteo
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-open-meteo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous client for the Open-Meteo API.
  URL:=https://github.com/frenck/python-open-meteo
  DEPENDS:=+python3 +python3-aiohttp +python3-mashumaro +python3-orjson
endef

define Package/python3-open-meteo/description
Open-Meteo offers free weather forecast APIs for open-source developers and non-commercial use. No API key is required. You can start using it immediately!
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-open-meteo))
$(eval $(call BuildPackage,python3-open-meteo))
$(eval $(call BuildPackage,python3-open-meteo-src))
