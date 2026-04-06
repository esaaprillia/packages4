include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmeel-eigen
PKG_VERSION:=3.4.1
PKG_RELEASE:=1

PYPI_NAME:=cmeel_eigen
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=

HOST_BUILD_DEPENDS:=python-cmeel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmeel-eigen
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Eigen distribution for cmeel packages.
  URL:=https://github.com/cmake-wheel/cmeel-eigen
  DEPENDS:=+python3
endef

define Package/python3-cmeel-eigen/description
cmeel distribution for Eigen. Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers, and related algorithms.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmeel-eigen))
$(eval $(call BuildPackage,python3-cmeel-eigen))
$(eval $(call BuildPackage,python3-cmeel-eigen-src))
