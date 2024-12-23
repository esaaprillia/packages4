include $(TOPDIR)/rules.mk

PKG_NAME:=python-distlib
PKG_VERSION:=0.3.9
PKG_RELEASE:=1

PYPI_NAME:=distlib
PKG_HASH:=a60f20dea646b8a33f3e7772f74dc0b2d0772d2837ee1342a00645c81edf9403

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

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

$(eval $(call Py3Package,python3-distlib))
$(eval $(call BuildPackage,python3-distlib))
$(eval $(call BuildPackage,python3-distlib-src))
