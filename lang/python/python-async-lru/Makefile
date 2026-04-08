include $(TOPDIR)/rules.mk

PKG_NAME:=python-async-lru
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PYPI_NAME:=async_lru
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-async-lru
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple LRU cache for asyncio
  URL:=https://github.com/aio-libs/async-lru
  DEPENDS:=+python3
endef

define Package/python3-async-lru/description
This package is a port of Python’s built-in functools.lru_cache function for asyncio. To better handle async behaviour, it also ensures multiple concurrent calls will only result in 1 call to the wrapped function, with all awaits receiving the result of that call when it completes.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-async-lru))
$(eval $(call BuildPackage,python3-async-lru))
$(eval $(call BuildPackage,python3-async-lru-src))
