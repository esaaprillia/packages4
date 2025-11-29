include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioswitcher
PKG_VERSION:=6.0.3
PKG_RELEASE:=1

PYPI_NAME:=aioswitcher
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

define Package/python3-aioswitcher
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PyPi module integrating with various Switcher devices.
  URL:=https://aioswitcher.figenblat.com/
  DEPENDS:=+python3 +python3-cryptodome +python3-aiohttp
endef

define Package/python3-aioswitcher/description
PyPi module integrating with various Switcher devices.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioswitcher))
$(eval $(call BuildPackage,python3-aioswitcher))
$(eval $(call BuildPackage,python3-aioswitcher-src))
