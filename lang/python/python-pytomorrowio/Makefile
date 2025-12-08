include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytomorrowio
PKG_VERSION:=0.3.6
PKG_RELEASE:=1

PYPI_NAME:=pytomorrowio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytomorrowio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async Python3.9+ package to access the Tomorrow.io API
  URL:=https://github.com/raman325/pytomorrowio
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-pytomorrowio/description
Both an async module (TomorrowioV4) and a synchronous module (TomorrowioV4Sync) are provided.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytomorrowio))
$(eval $(call BuildPackage,python3-pytomorrowio))
$(eval $(call BuildPackage,python3-pytomorrowio-src))
