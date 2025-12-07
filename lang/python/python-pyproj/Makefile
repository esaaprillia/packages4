include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyproj
PKG_VERSION:=3.7.2
PKG_RELEASE:=1

PYPI_NAME:=pyproj
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE LICENSE_proj

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyproj
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python interface to PROJ
  URL:=https://pyproj4.github.io/pyproj/
  DEPENDS:=+python3 +python3-certifi +proj
endef

define Package/python3-pyproj/description
Python interface to PROJ (cartographic projections and coordinate transformations library).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyproj))
$(eval $(call BuildPackage,python3-pyproj))
$(eval $(call BuildPackage,python3-pyproj-src))
