include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyjwt
PKG_VERSION:=2.10.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyjwt
PKG_HASH:=3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyjwt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON Web Token implementation in Python
  URL:=https://github.com/jpadilla/pyjwt
  DEPENDS:=+python3
endef

define Package/python3-pyjwt/description
A Python implementation of RFC 7519. Original implementation was written by @progrium.
endef

PYTHON3_PKG_WHEEL_NAME:=PyJWT
PYTHON3_PKG_WHEEL_VERSION:=2.10.1

$(eval $(call Py3Package,python3-pyjwt))
$(eval $(call BuildPackage,python3-pyjwt))
$(eval $(call BuildPackage,python3-pyjwt-src))
