include $(TOPDIR)/rules.mk

PKG_NAME:=python-cppy
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=cppy
PKG_HASH:=skip

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

define Package/python3-cppy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A collection of C++ headers which make it easier to write Python C extension modules.
  URL:=https://github.com/nucleic/cppy
  DEPENDS:=+python3
endef

define Package/python3-cppy/description
  A small C++ header library which makes it easier to write Python extension modules.
  The primary feature is a PyObject smart pointer which automatically handles reference counting and provides convenience methods for performing common object operations.
endef

$(eval $(call Py3Package,python3-cppy))
$(eval $(call BuildPackage,python3-cppy))
$(eval $(call BuildPackage,python3-cppy-src))
$(eval $(call HostBuild))
