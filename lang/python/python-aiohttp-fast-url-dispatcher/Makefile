include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-fast-url-dispatcher
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_fast_url_dispatcher
PKG_HASH:=5a730a3872503ee5c94c65c6dee2a17b4773e022630f2557cae84f2e74ea26ed

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohttp-fast-url-dispatcher
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A faster URL dispatcher for aiohttp
  URL:=https://github.com/bdraco/aiohttp-fast-url-dispatcher
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-aiohttp-fast-url-dispatcher/description
The default UrlDispatcher implementation does a linear search every which can have a significant TimeComplexity when dispatching urls when there are a lot of routes. FastUrlDispatcher keeps an index of the urls which allows for fast dispatch.
This library will become obsolete with aiohttp 3.10 as the changes are expected to merge upstream via https://github.com/aio-libs/aiohttp/pull/7829
endef

$(eval $(call Py3Package,python3-aiohttp-fast-url-dispatcher))
$(eval $(call BuildPackage,python3-aiohttp-fast-url-dispatcher))
$(eval $(call BuildPackage,python3-aiohttp-fast-url-dispatcher-src))
