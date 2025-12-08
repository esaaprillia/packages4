include $(TOPDIR)/rules.mk

PKG_NAME:=python-meteofrance-api
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PYPI_NAME:=meteofrance_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-meteofrance-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for Meteo-France API.
  URL:=https://meteofrance-api.readthedocs.io/
  DEPENDS:=+python3 +python3-requests +python3-pytz +python3-typing-extensions
endef

define Package/python3-meteofrance-api/description
Client Python pour l’API Meteo-France. | Python client for Meteo-France API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-meteofrance-api))
$(eval $(call BuildPackage,python3-meteofrance-api))
$(eval $(call BuildPackage,python3-meteofrance-api-src))
