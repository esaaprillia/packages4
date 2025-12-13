include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybravia
PKG_VERSION:=0.3.4
PKG_RELEASE:=1

PYPI_NAME:=pybravia
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

define Package/python3-pybravia
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python async library for remote control of Sony Bravia TVs 2013 and newer.
  URL:=https://github.com/Drafteed/pybravia
  DEPENDS:=+python3 +python3-aiohttp
endef

define Package/python3-pybravia/description
Python async library for remote control of Sony Bravia TVs 2013 and newer.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pybravia))
$(eval $(call BuildPackage,python3-pybravia))
$(eval $(call BuildPackage,python3-pybravia-src))
