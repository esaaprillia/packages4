include $(TOPDIR)/rules.mk

PKG_NAME:=python-pythran
PKG_VERSION:=0.16.1
PKG_RELEASE:=1

PYPI_NAME:=pythran
PKG_HASH:=861748c0f9c7d422b32724b114b3817d818ed4eab86c09781aa0a3f7ceabb7f9

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pythran
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ahead of Time compiler for numeric kernels
  URL:=pythran.readthedocs.io
  DEPENDS:=+python3 +python3-beniget +python3-gast +python3-numpy +python3-ply
endef

define Package/python3-pythran/description
  Pythran is an ahead of time compiler for a subset of the Python language, with a focus on scientific computing.
  It takes a Python module annotated with a few interface descriptions and turns it into a native Python module with the same interface, but (hopefully) faster.
endef

$(eval $(call Py3Package,python3-pythran))
$(eval $(call BuildPackage,python3-pythran))
$(eval $(call BuildPackage,python3-pythran-src))
$(eval $(call HostBuild))
