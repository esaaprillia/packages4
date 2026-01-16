include $(TOPDIR)/rules.mk

PKG_NAME:=python-gql
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=gql
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-gql
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=GraphQL client for Python
  URL:=https://github.com/graphql-python/gql
  DEPENDS:= \
	+python3-light \
	+python3-graphql-core \
	+python3-yarl \
	+python3-backoff \
	+python3-anyio
endef

define Package/python3-gql/description
This is a GraphQL client for Python. Plays nicely with graphene, graphql-core, graphql-js and any other GraphQL implementation compatible with the GraphQL specification.
endef

$(eval $(call Py3Package,python3-gql))
$(eval $(call BuildPackage,python3-gql))
$(eval $(call BuildPackage,python3-gql-src))
