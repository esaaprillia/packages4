include $(TOPDIR)/rules.mk

PKG_NAME:=python-shapely
PKG_VERSION:=2.1.2
PKG_RELEASE:=1

PYPI_NAME:=shapely
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-shapely
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Manipulation and analysis of geometric objects
  URL:=https://shapely.readthedocs.io/
  DEPENDS:=+python3 +python3-numpy +geos
endef

define Package/python3-shapely/description
Manipulation and analysis of geometric objects in the Cartesian plane.
endef

$(eval $(call Py3Package,python3-shapely))
$(eval $(call BuildPackage,python3-shapely))
$(eval $(call BuildPackage,python3-shapely-src))
