include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyopenweathermap
PKG_VERSION:=0.2.2
PKG_RELEASE:=1

PYPI_NAME:=pyopenweathermap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyopenweathermap
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for OpenWeatherMap API for Home Assistant
  URL:=https://github.com/freekode/pyopenweathermap
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-pyopenweathermap/description
Python library for OpenWeatherMap API for Home Assistant
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyopenweathermap))
$(eval $(call BuildPackage,python3-pyopenweathermap))
$(eval $(call BuildPackage,python3-pyopenweathermap-src))
