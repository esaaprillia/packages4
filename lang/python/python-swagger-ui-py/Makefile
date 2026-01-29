include $(TOPDIR)/rules.mk

PKG_NAME:=python-swagger-ui-py
PKG_VERSION:=25.7.1
PKG_RELEASE:=1

PYPI_NAME:=swagger-ui-py
PKG_SOURCE_URL:=https://github.com/PWZER/swagger-ui-py/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-swagger-ui-py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Swagger UI for Python web framework, such Tornado, Flask and Sanic.
  URL:=https://github.com/PWZER/swagger-ui-py
  DEPENDS:= \
	+python3 \
	+python3-jinja2 \
	+python3-packaging \
	+python3-yaml
endef

define Package/python3-swagger-ui-py/description
Swagger UI for Python web framework, such Tornado, Flask, Quart, aiohttp, Sanic and Falcon.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-swagger-ui-py))
$(eval $(call BuildPackage,python3-swagger-ui-py))
$(eval $(call BuildPackage,python3-swagger-ui-py-src))
