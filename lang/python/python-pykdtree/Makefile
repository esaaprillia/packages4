include $(TOPDIR)/rules.mk

PKG_NAME:=python-pykdtree
PKG_VERSION:=1.4.3
PKG_RELEASE:=1

PYPI_NAME:=pykdtree
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=numpy/host python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pykdtree
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast kd-tree implementation with OpenMP-enabled queries
  URL:=https://github.com/storpipfugl/pykdtree
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+libgomp
endef

define Package/python3-pykdtree/description
pykdtree is a kd-tree implementation for fast nearest neighbour search in Python.
endef

$(eval $(call Py3Package,python3-pykdtree))
$(eval $(call BuildPackage,python3-pykdtree))
$(eval $(call BuildPackage,python3-pykdtree-src))
