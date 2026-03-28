include $(TOPDIR)/rules.mk

PKG_NAME:=python-graphql-core
PKG_VERSION:=3.2.8
PKG_RELEASE:=1

PYPI_NAME:=graphql_core
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-graphql-core
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python 3.6+ port of the GraphQL.js reference implementation of GraphQL.
  URL:=https://github.com/graphql-python/graphql-core
  DEPENDS:=+python3
endef

define Package/python3-graphql-core/description
GraphQL-core 3 is a Python 3.6+ port of GraphQL.js, the JavaScript reference implementation for GraphQL, a query language for APIs created by Facebook.
endef

$(eval $(call Py3Package,python3-graphql-core))
$(eval $(call BuildPackage,python3-graphql-core))
$(eval $(call BuildPackage,python3-graphql-core-src))
