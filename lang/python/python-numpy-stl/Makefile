include $(TOPDIR)/rules.mk

PKG_NAME:=python-numpy-stl
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PYPI_NAME:=numpy_stl
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-numpy-stl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library to make reading, writing and modifying both binary and ascii STL files easy.
  URL:=https://github.com/WoLpH/numpy-stl/
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-utils
endef

define Package/python3-numpy-stl/description
  Simple library to make working with STL files (and 3D objects in general) fast and easy.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-numpy-stl))
$(eval $(call BuildPackage,python3-numpy-stl))
$(eval $(call BuildPackage,python3-numpy-stl-src))
