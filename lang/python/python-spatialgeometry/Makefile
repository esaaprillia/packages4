include $(TOPDIR)/rules.mk

PKG_NAME:=python-spatialgeometry
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=spatialgeometry
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-oldest-supported-numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-spatialgeometry
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Shape and Geometry Description Package
  URL:=https://github.com/jhavl/spatialgeometry
  DEPENDS:= \
	+python3 \
	+python3-spatialmath
endef

define Package/python3-spatialgeometry/description
Spatial Geometry
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-spatialgeometry))
$(eval $(call BuildPackage,python3-spatialgeometry))
$(eval $(call BuildPackage,python3-spatialgeometry-src))
