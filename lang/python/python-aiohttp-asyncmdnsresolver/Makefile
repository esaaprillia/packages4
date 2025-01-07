include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-asyncmdnsresolver
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_asyncmdnsresolver
PKG_HASH:=d807948250e19e88f99baa028ed5100867337b5abd520c3f033fc17b459179f9

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
