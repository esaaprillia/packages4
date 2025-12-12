include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-sse
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=aiohttp-sse
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiohttp-sse
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Server-sent events support for aiohttp.
  URL:=https://github.com/aio-libs/aiohttp_sse/
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-aiohttp-sse/description
The EventSource interface is used to receive server-sent events.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiohttp-sse))
$(eval $(call BuildPackage,python3-aiohttp-sse))
$(eval $(call BuildPackage,python3-aiohttp-sse-src))
