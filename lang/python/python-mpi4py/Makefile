include $(TOPDIR)/rules.mk

PKG_NAME:=python-mpi4py
PKG_VERSION:=4.1.1
PKG_RELEASE:=1

PYPI_NAME:=mpi4py
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mpi4py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for MPI
  URL:=https://mpi4py.github.io/mpi4py/
  DEPENDS:=+python3 +openmpi
endef

define Package/python3-mpi4py/description
  This package provides Python bindings for the Message Passing Interface (MPI) standard. It is implemented on top of the MPI specification and exposes an API which grounds on the standard MPI-2 C++ bindings.
endef

$(eval $(call Py3Package,python3-mpi4py))
$(eval $(call BuildPackage,python3-mpi4py))
$(eval $(call BuildPackage,python3-mpi4py-src))
