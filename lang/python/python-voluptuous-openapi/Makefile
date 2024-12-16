include $(TOPDIR)/rules.mk

PKG_NAME:=python-voluptuous-openapi
PKG_VERSION:=0.0.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=voluptuous_openapi
PKG_HASH:=1619cd298da0024fa01338ac5a9ce3b3b7059205ce3c69230c24803b11308fb0

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-voluptuous-openapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convert voluptuous schemas to OpenAPI Schema object
  URL:=https://pypi.org/project/voluptuous
  DEPENDS:=+python3 +python3-voluptuous
endef

define Package/python3-voluptuous-openapi/description
Convert voluptuous schemas to OpenAPI Schema object
endef

$(eval $(call Py3Package,python3-voluptuous-openapi))
$(eval $(call BuildPackage,python3-voluptuous-openapi))
$(eval $(call BuildPackage,python3-voluptuous-openapi-src))
