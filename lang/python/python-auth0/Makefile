include $(TOPDIR)/rules.mk

PKG_NAME:=python-auth0
PKG_VERSION:=4.13.0
PKG_RELEASE:=1

PYPI_NAME:=auth0_python
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

define Package/python3-auth0
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Auth0 SDK for Python
  URL:=https://auth0.com/
  DEPENDS:=+python3 +python3-aiohttp +python3-cryptography +python3-pyjwt +python3-requests +python3-urllib3
endef

define Package/python3-auth0/description
Auth0 SDK for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-auth0))
$(eval $(call BuildPackage,python3-auth0))
$(eval $(call BuildPackage,python3-auth0-src))
