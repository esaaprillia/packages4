include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx-aiohttp
PKG_VERSION:=0.1.12
PKG_RELEASE:=1

PYPI_NAME:=httpx_aiohttp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-httpx-aiohttp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Aiohttp transport for HTTPX
  URL:=https://karpetrosyan.github.io/httpx-aiohttp/
  DEPENDS:=+python3 +python3-aiohttp +python3-httpx
endef

define Package/python3-httpx-aiohttp/description
httpx-aiohttp - provides transports for httpx to work on top of aiohttp, handling all high-level features like authentication, retries, and cookies through httpx, while delegating low-level socket-level HTTP messaging to aiohttp
endef

$(eval $(call Py3Package,python3-httpx-aiohttp))
$(eval $(call BuildPackage,python3-httpx-aiohttp))
$(eval $(call BuildPackage,python3-httpx-aiohttp-src))
