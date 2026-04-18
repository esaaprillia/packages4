include $(TOPDIR)/rules.mk

PKG_NAME:=python-rtree
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=rtree
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-rtree
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=R-Tree spatial index for Python GIS
  URL:=https://github.com/Toblerity/rtree
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+libspatialindex
endef

define Package/python3-rtree/description
  Rtree is a ctypes Python wrapper of libspatialindex that provides a number of advanced spatial indexing features for the spatially curious Python user.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rtree))
$(eval $(call BuildPackage,python3-rtree))
$(eval $(call BuildPackage,python3-rtree-src))
