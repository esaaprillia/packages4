include $(TOPDIR)/rules.mk

PKG_NAME:=python-mpmath
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=mpmath
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mpmath
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for arbitrary-precision floating-point arithmetic
  URL:=http://mpmath.org/
  DEPENDS:=+python3 +python3-gmpy2
endef

define Package/python3-mpmath/description
A Python library for arbitrary-precision floating-point arithmetic.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mpmath))
$(eval $(call BuildPackage,python3-mpmath))
$(eval $(call BuildPackage,python3-mpmath-src))
