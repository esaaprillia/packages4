include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymeeus
PKG_VERSION:=0.5.12
PKG_RELEASE:=1

PYPI_NAME:=PyMeeus
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0 GPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pymeeus
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python implementation of Jean Meeus astronomical routines
  URL:=https://github.com/architest/pymeeus
  DEPENDS:=+python3
endef

define Package/python3-pymeeus/description
PyMeeus is a Python implementation of the astronomical algorithms described in the classical book ‘Astronomical Algorithms, 2nd Edition, Willmann-Bell Inc. (1998)’ by Jean Meeus.
endef

PYTHON3_PKG_WHEEL_NAME:=pymeeus
PYTHON3_PKG_WHEEL_VERSION:=0.5.12

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pymeeus))
$(eval $(call BuildPackage,python3-pymeeus))
$(eval $(call BuildPackage,python3-pymeeus-src))
