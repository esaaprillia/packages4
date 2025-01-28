include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyhaversion
PKG_VERSION:=24.6.1
PKG_RELEASE:=1

PYPI_NAME:=pyhaversion
PKG_HASH:=523d716e4b9f2d6ff59c0caf3f6e28326dad25431b1ff990c45b93a01ac9e674

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyhaversion
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Get the latest HA version from various sources
  URL:=https://github.com/ludeeus/pyhaversion
  DEPENDS:= \
	+python3-aiohttp \
	+python3-asyncio \
	+python3-awesomeversion \
	+python3-logging
endef

define Package/python3-pyhaversion/description
  Get the latest Home Assistant version from various sources.
endef

$(eval $(call Py3Package,python3-pyhaversion))
$(eval $(call BuildPackage,python3-pyhaversion))
$(eval $(call BuildPackage,python3-pyhaversion-src))
