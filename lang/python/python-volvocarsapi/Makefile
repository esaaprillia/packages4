include $(TOPDIR)/rules.mk

PKG_NAME:=python-volvocarsapi
PKG_VERSION:=0.4.3
PKG_RELEASE:=1

PYPI_NAME:=volvocarsapi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-volvocarsapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for the Volvo Cars API.
  URL:=https://github.com/thomasddn/volvo-cars-api
  DEPENDS:=+python3 +python3-aiohttp +python3-yarl
endef

define Package/python3-volvocarsapi/description
This python library lets you use the Volvo Cars API. Authorisation follows the OAuth 2.0 authorisation code flow with PKCE.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-volvocarsapi))
$(eval $(call BuildPackage,python3-volvocarsapi))
$(eval $(call BuildPackage,python3-volvocarsapi-src))
