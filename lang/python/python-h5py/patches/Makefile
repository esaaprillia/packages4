include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest-mpi
PKG_VERSION:=0.6
PKG_RELEASE:=1

PYPI_NAME:=pytest-mpi
PKG_HASH:=09b3cd3511f8f3cd4d205f54d4a7223724fed0ab68b872ed1123d312152325a9

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytest-mpi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pytest plugin to collect information from tests
  URL:=https://pytest-mpi.readthedocs.io
  DEPENDS:= \
	+python3-light \
	+python3-pytest
endef

define Package/python3-pytest-mpi/description
pytest_mpi is a plugin for pytest providing some useful tools when running tests under MPI, and testing MPI-related code.
endef

$(eval $(call Py3Package,python3-pytest-mpi))
$(eval $(call BuildPackage,python3-pytest-mpi))
$(eval $(call BuildPackage,python3-pytest-mpi-src))
$(eval $(call HostBuild))
