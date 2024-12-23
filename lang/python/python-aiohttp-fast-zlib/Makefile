include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-fast-zlib
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiohttp_fast_zlib
PKG_HASH:=f0f392ebd663e781a9e5c10646f24c26c0b9fac6293ddf8e28f37dad66ce5117

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohttp-fast-zlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Use the fastest installed zlib compatible library with aiohttp
  URL:=https://github.com/bdraco/aiohttp-fast-zlib
  DEPENDS:=+python3-light +python3-aiohttp +python3-isal +python3-zlib-ng
endef

define Package/python3-aiohttp-fast-zlib/description
Use the fastest installed zlib compatible library with aiohttp

zlib is be a bottleneck for aiohttp, especially for websocket connections. aiohttp-fast-zlib replaces usage of zlib in aiohttp with isal or zlib-ng which is a drop-in faster replacement in most cases. Be sure to read the isal documentation and the zlib-ng documentation.
endef

$(eval $(call Py3Package,python3-aiohttp-fast-zlib))
$(eval $(call BuildPackage,python3-aiohttp-fast-zlib))
$(eval $(call BuildPackage,python3-aiohttp-fast-zlib-src))
