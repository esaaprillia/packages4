include $(TOPDIR)/rules.mk

PKG_NAME:=python-sparsediffpy
PKG_VERSION:=0.6.1
PKG_RELEASE:=1

PYPI_NAME:=sparsediffpy
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-scikit-build-core/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sparsediffpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for SparseDiffEngine algorithmic differentiation
  URL:=https://github.com/SparseDifferentiation/SparseDiffPy
  DEPENDS:= +python3-light +libstdcpp +python3-numpy
endef

define Package/python3-sparsediffpy/description
  Python bindings for SparseDiffEngine, a C library for computing sparse Jacobians and Hessians.
endef

PYTHON3_PKG_SETUP_VARS += CMAKE_ARGS="-DOPENBLAS_INCLUDE_DIR=$(STAGING_DIR)/usr/include/openblas"

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sparsediffpy))
$(eval $(call BuildPackage,python3-sparsediffpy))
$(eval $(call BuildPackage,python3-sparsediffpy-src))
