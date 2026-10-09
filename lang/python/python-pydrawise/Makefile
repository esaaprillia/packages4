include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydrawise
PKG_VERSION:=2026.9.1
PKG_RELEASE:=1

PYPI_NAME:=pydrawise
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pydrawise
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for interacting with Hydrawise sprinkler controllers.
  URL:=https://github.com/dknowles2/pydrawise
  DEPENDS:= \
	+python3-light \
	+python3-aiohttp \
	+python3-gql \
	+python3-graphql-core \
	+python3-pydantic \
	+python3-requests
endef

define Package/python3-pydrawise/description
Pydrawise is an asynchronous Python 3 library for interacting with Hydrawise sprinkler controllers.
endef

$(eval $(call Py3Package,python3-pydrawise))
$(eval $(call BuildPackage,python3-pydrawise))
$(eval $(call BuildPackage,python3-pydrawise-src))
