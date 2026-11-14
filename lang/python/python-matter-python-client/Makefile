include $(TOPDIR)/rules.mk

PKG_NAME:=python-matter-python-client
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PYPI_NAME:=matter_python_client
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-matter-python-client
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Client for the OHF Matter Server
  URL:=https://github.com/matter-js/matterjs-server
  DEPENDS:=+python3-light +python3-aiohttp +python3-dacite +python3-orjson
endef

define Package/python3-matter-python-client/description
A PyPI package (matter-python-client) providing Python bindings for the OHF Matter Server.
endef

$(eval $(call Py3Package,python3-matter-python-client))
$(eval $(call BuildPackage,python3-matter-python-client))
$(eval $(call BuildPackage,python3-matter-python-client-src))
