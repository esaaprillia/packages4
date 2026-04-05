include $(TOPDIR)/rules.mk

PKG_NAME:=python-osqp
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=osqp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-scikit-build-core/host python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-osqp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OSQP: The Operator Splitting QP Solver
  URL:=https://osqp.org/
  DEPENDS:= \
	+python3 \
	+python3-jinja2 \
	+python3-numpy \
	+python3-scipy \
	+python3-setuptools \
	+python3-joblib
endef

define Package/python3-osqp/description
Python wrapper for OSQP: The Operator Splitting QP solver.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-osqp))
$(eval $(call BuildPackage,python3-osqp))
$(eval $(call BuildPackage,python3-osqp-src))
