include $(TOPDIR)/rules.mk

PKG_NAME:=python-cvxpy
PKG_VERSION:=1.9.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=cvxpy
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=numpy/host python-scipy/host python-setuptools-scm/host python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cvxpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A domain-specific language for modeling convex optimization problems in Python.
  URL:=https://github.com/cvxpy/cvxpy
  DEPENDS:= \
	+python3 \
	+python3-osqp \
	+python3-clarabel \
	+python3-scs \
	+python3-numpy \
	+python3-scipy \
	+python3-highspy \
	+python3-qdldl \
	+python3-sparsediffpy
endef

define Package/python3-cvxpy/description
CVXPY is a Python-embedded modeling language for convex optimization problems.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cvxpy))
$(eval $(call BuildPackage,python3-cvxpy))
$(eval $(call BuildPackage,python3-cvxpy-src))
