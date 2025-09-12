include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-retry
PKG_VERSION:=2.9.1
PKG_RELEASE:=1

PYPI_NAME:=aiohttp_retry
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiohttp-retry
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple retry client for aiohttp
  URL:=https://github.com/inyutin/aiohttp_retry
  DEPENDS:=+python3 +python3-aiohttp +python3-yarl
endef

define Package/python3-aiohttp-retry/description
  Simple retry client for aiohttp
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiohttp-retry))
$(eval $(call BuildPackage,python3-aiohttp-retry))
$(eval $(call BuildPackage,python3-aiohttp-retry-src))
