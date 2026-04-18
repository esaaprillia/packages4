include $(TOPDIR)/rules.mk

PKG_NAME:=python-trimesh
PKG_VERSION:=4.11.5
PKG_RELEASE:=1

PYPI_NAME:=trimesh
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-trimesh
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Import, export, process, analyze and view triangular meshes.
  URL:=https://github.com/mikedh/trimesh
  DEPENDS:= \
	+python3 \
	+python3-numpy
endef

define Package/python3-trimesh/description
  Trimesh is a pure Python 3.8+ library for loading and using triangular meshes with an emphasis on watertight surfaces.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-trimesh))
$(eval $(call BuildPackage,python3-trimesh))
$(eval $(call BuildPackage,python3-trimesh-src))
