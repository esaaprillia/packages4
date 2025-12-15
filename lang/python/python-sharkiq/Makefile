include $(TOPDIR)/rules.mk

PKG_NAME:=python-sharkiq
PKG_VERSION:=1.5.0
PKG_RELEASE:=1

PYPI_NAME:=sharkiq
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sharkiq
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API for Shark IQ robots
  URL:=https://github.com/sharkiqlibs/sharkiq
  DEPENDS:=+python3 +python3-aiohttp +python3-auth0 +python3-requests
endef

define Package/python3-sharkiq/description
Unofficial SDK for Shark IQ robot vacuums, designed primarily to support an integration for Home Assistant.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sharkiq))
$(eval $(call BuildPackage,python3-sharkiq))
$(eval $(call BuildPackage,python3-sharkiq-src))
