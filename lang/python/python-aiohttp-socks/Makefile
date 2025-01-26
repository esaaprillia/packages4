include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-socks
PKG_VERSION:=0.10.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_socks
PKG_HASH:=49f2e1f8051f2885719beb1b77e312b5a27c3e4b60f0b045a388f194d995e068

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohttp-socks
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Proxy connector for aiohttp
  URL:=https://github.com/romis2012/aiohttp-socks
  DEPENDS:=+python3 +python3-aiohttp +python3-socks
endef

define Package/python3-aiohttp-socks/description
The aiohttp-socks package provides a proxy connector for aiohttp. Supports SOCKS4(a), SOCKS5(h), HTTP (tunneling) as well as Proxy chains. It uses python-socks for core proxy functionality.
endef

$(eval $(call Py3Package,python3-aiohttp-socks))
$(eval $(call BuildPackage,python3-aiohttp-socks))
$(eval $(call BuildPackage,python3-aiohttp-socks-src))
