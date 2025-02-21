include $(TOPDIR)/rules.mk

PKG_NAME:=python-wrapt
PKG_VERSION:=1.17.2
PKG_RELEASE:=1

PYPI_NAME:=wrapt
PKG_HASH:=41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3

PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-wrapt
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Module for decorators, wrappers and monkey patching.
  URL:=https://github.com/GrahamDumpleton/wrapt
  DEPENDS:=+python3
endef

define Package/python3-wrapt/description
The aim of the wrapt module is to provide a transparent object proxy for Python, which can be used as the basis for the construction of function wrappers and decorator functions.
endef

$(eval $(call Py3Package,python3-wrapt))
$(eval $(call BuildPackage,python3-wrapt))
$(eval $(call BuildPackage,python3-wrapt-src))
$(eval $(call HostBuild))
