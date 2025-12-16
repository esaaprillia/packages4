include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioecowitt
PKG_VERSION:=2025.9.2
PKG_RELEASE:=1

PYPI_NAME:=aioecowitt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioecowitt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for EcoWitt Protocol
  URL:=https://github.com/home-assistant-libs/aioecowitt
  DEPENDS:=+python3 +python3-aiohttp +python3-meteocalc
endef

define Package/python3-aioecowitt/description
Simple python library for the EcoWitt Protocol
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioecowitt))
$(eval $(call BuildPackage,python3-aioecowitt))
$(eval $(call BuildPackage,python3-aioecowitt-src))
