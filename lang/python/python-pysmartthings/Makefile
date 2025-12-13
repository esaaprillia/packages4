include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysmartthings
PKG_VERSION:=3.5.1
PKG_RELEASE:=1

PYPI_NAME:=pysmartthings
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pysmartthings
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Asynchronous Python client for SmartThings.
  URL:=https://github.com/pySmartThings/pysmartthings
  DEPENDS:=+python3 +python3-aiohttp +python3-yarl +python3-mashumaro +python3-orjson +python3-aiohttp-sse-client2
endef

define Package/python3-pysmartthings/description
This package allows you to fetch data from SmartThings.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pysmartthings))
$(eval $(call BuildPackage,python3-pysmartthings))
$(eval $(call BuildPackage,python3-pysmartthings-src))
