include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-asyncmdnsresolver
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_asyncmdnsresolver
PKG_HASH:=11f02a8d993e1c707cc5ab3cb8caba3724a30fc67bcadcff2d2b08a6ef7ec767

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohttp-asyncmdnsresolver
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An async resolver for aiohttp that supports MDNS
  URL:=https://aiohttp-asyncmdnsresolver.aio-libs.org/
  DEPENDS:=+python3-light +python3-aiodns +python3-aiohttp +python3-zeroconf
endef

define Package/python3-aiohttp-asyncmdnsresolver/description
This module provides an aiohttp resolver that supports mDNS, which uses the zeroconf library to resolve mDNS queries.
endef

$(eval $(call Py3Package,python3-aiohttp-asyncmdnsresolver))
$(eval $(call BuildPackage,python3-aiohttp-asyncmdnsresolver))
$(eval $(call BuildPackage,python3-aiohttp-asyncmdnsresolver-src))
