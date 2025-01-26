include $(TOPDIR)/rules.mk

PKG_NAME:=python-socks
PKG_VERSION:=2.6.1
PKG_RELEASE:=1

PYPI_NAME:=python_socks
PKG_HASH:=9743929aab6ffe0bab640ecfbbee7130af92408ad86e4aa2984789f742f3ec9e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-socks
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Proxy (SOCKS4, SOCKS5, HTTP CONNECT) client for Python
  URL:=https://github.com/romis2012/python-socks
  DEPENDS:=+python3 +python3-async-timeout +python3-trio +python3-curio +python3-anyio
endef

define Package/python3-socks/description
The python-socks package provides a core proxy client functionality for Python. Supports SOCKS4(a), SOCKS5(h), HTTP CONNECT proxy and provides sync and async (asyncio, trio, curio, anyio) APIs. You probably don't need to use python-socks directly. It is used internally by aiohttp-socks and httpx-socks packages.
endef

$(eval $(call Py3Package,python3-socks))
$(eval $(call BuildPackage,python3-socks))
$(eval $(call BuildPackage,python3-socks-src))
