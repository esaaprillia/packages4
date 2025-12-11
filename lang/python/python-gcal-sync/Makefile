include $(TOPDIR)/rules.mk

PKG_NAME:=python-gcal-sync
PKG_VERSION:=9.0.0
PKG_RELEASE:=1

PYPI_NAME:=gcal_sync
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gcal-sync
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A python library for syncing Google Calendar to local storage
  URL:=https://github.com/allenporter/gcal_sync
  DEPENDS:=+python3 +python3-aiohttp +python3-ical +python3-pydantic
endef

define Package/python3-gcal-sync/description
An asyncio python library for the Google Calendar API. This library provides a simplified Google Calendar API that is lighter weight and more streamlined compared to using aiogoogle, and increased reliability by supporting efficient sync and reading from local storage.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gcal-sync))
$(eval $(call BuildPackage,python3-gcal-sync))
$(eval $(call BuildPackage,python3-gcal-sync-src))
