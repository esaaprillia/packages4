include $(TOPDIR)/rules.mk

PKG_NAME:=python-actron-neo-api
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=actron_neo_api
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-actron-neo-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API wrapper for the Actron Neo API.
  URL:=https://github.com/kclif9/actronneoapi
  DEPENDS:=+python3 +python3-aiohttp +python3-pydantic
endef

define Package/python3-actron-neo-api/description
The ActronAirAPI library provides an interface to communicate with Actron Air systems, enabling integration with Home Assistant or other platforms. This Python library offers methods for authentication, token management, and interacting with AC systems, zones, and settings.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-actron-neo-api))
$(eval $(call BuildPackage,python3-actron-neo-api))
$(eval $(call BuildPackage,python3-actron-neo-api-src))
