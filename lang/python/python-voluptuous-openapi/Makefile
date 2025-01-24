include $(TOPDIR)/rules.mk

PKG_NAME:=python-voluptuous-openapi
PKG_VERSION:=0.0.6
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=voluptuous_openapi
PKG_HASH:=4078c2acef23e04ceeab1ba58252590fcdc3ba6e3ed34521e8595374ab4de884

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
