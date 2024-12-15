#
# Copyright (C) 2019-2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp
PKG_VERSION:=3.11.10
PKG_RELEASE:=1

PYPI_NAME:=aiohttp
PKG_HASH:=b1fc6b45010a8d0ff9e88f9f2418c6fd408c99c211257334aff41597ebece42e

PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:aiohttp:aiohttp

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohttp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Async http client/server framework (asyncio)
  URL:=https://github.com/aio-libs/aiohttp
  DEPENDS:= \
	+python3 \
	+python3-aiosignal \
	+python3-async-timeout \
	+python3-attrs \
	+python3-charset-normalizer \
	+python3-frozenlist \
	+python3-multidict \
	+python3-yarl
endef

define Package/python3-aiohttp/description
  Asynchronous HTTP client/server framework for asyncio and Python3.
endef

$(eval $(call Py3Package,python3-aiohttp))
$(eval $(call BuildPackage,python3-aiohttp))
$(eval $(call BuildPackage,python3-aiohttp-src))
