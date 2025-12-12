include $(TOPDIR)/rules.mk

PKG_NAME:=python-geographiclib
PKG_VERSION:=2.1
PKG_RELEASE:=1

PYPI_NAME:=geographiclib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-geographiclib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The geodesic routines from GeographicLib
  URL:=https://geographiclib.sourceforge.io/Python/
  DEPENDS:=+python3
endef

define Package/python3-geographiclib/description
Python implementation of the geodesic routines in GeographicLib
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-geographiclib))
$(eval $(call BuildPackage,python3-geographiclib))
$(eval $(call BuildPackage,python3-geographiclib-src))
