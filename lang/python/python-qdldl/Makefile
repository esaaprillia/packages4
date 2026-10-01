include $(TOPDIR)/rules.mk

PKG_NAME:=python-qdldl
PKG_VERSION:=0.1.9.post1
PKG_RELEASE:=1

PYPI_NAME:=qdldl
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-oldest-supported-numpy/host python-pybind11/host

CMAKE_SOURCE_SUBDIR:= c
CMAKE_BINARY_SUBDIR := c/build

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-qdldl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=QDLDL, a free LDL factorization routine.
  URL:=https://github.com/osqp/qdldl-python
  DEPENDS:= +python3-light
endef

define Package/python3-qdldl/description
  Python interface to the QDLDL free LDL factorization routine for quasi-definite linear systems: Ax = b.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-qdldl))
$(eval $(call BuildPackage,python3-qdldl))
$(eval $(call BuildPackage,python3-qdldl-src))
