include $(TOPDIR)/rules.mk

PKG_NAME:=python-radios
PKG_VERSION:=0.3.2
PKG_RELEASE:=1

PYPI_NAME:=radios
PKG_HASH:=52aa939bc520d16f2f2d1559012610113e94b58e4c5f18320e5545f5f23a8405

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-radios
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous Python client for the Radio Browser API
  URL:=https://github.com/frenck/python-radios
  DEPENDS:=+python3 +python3-aiodns +python3-aiohttp +python3-asyncio +python3-awesomeversion +python3-backoff +python3-cachetools +python3-mashumaro +python3-orjson +python3-pycountry +python3-yarl
endef

define Package/python3-radios/description
Radio Browser community driven effort (like WikiPedia) with the aim of collecting as many internet radio and TV stations as possible.
This Python library is an async API client for that, originally developed for use with the Home Assistant project.
endef

$(eval $(call Py3Package,python3-radios))
$(eval $(call BuildPackage,python3-radios))
$(eval $(call BuildPackage,python3-radios-src))
