include $(TOPDIR)/rules.mk

PKG_NAME:=python-distlib
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=distlib
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=PSF-2.0
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-distlib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Distribution utilities
  URL:=http://distlib.readthedocs.io/
  DEPENDS:=+python3-light
endef

define Package/python3-distlib/description
Distlib is a library which implements low-level functions that relate to packaging and distribution of Python software. It is intended to be used as the basis for third-party packaging tools. The documentation is available at

https://distlib.readthedocs.io/
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-distlib))
$(eval $(call BuildPackage,python3-distlib))
$(eval $(call BuildPackage,python3-distlib-src))
