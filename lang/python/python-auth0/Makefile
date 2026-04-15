include $(TOPDIR)/rules.mk

PKG_NAME:=python-auth0
PKG_VERSION:=5.3.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=auth0_python
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-auth0
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Auth0 Python SDK - Management and Authentication APIs
  URL:=https://auth0.com/
  DEPENDS:= \
	+python3 \
	+python3-httpx \
	+python3-pydantic \
	+python3-pydantic-core \
	+python3-typing-extensions \
	+python3-aiohttp \
	+python3-cryptography \
	+python3-pyjwt \
	+python3-requests \
	+python3-urllib3
endef

define Package/python3-auth0/description
The Auth0 Python library provides convenient access to the Auth0 APIs from Python.
endef

$(eval $(call Py3Package,python3-auth0))
$(eval $(call BuildPackage,python3-auth0))
$(eval $(call BuildPackage,python3-auth0-src))
