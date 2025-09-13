include $(TOPDIR)/rules.mk

PKG_NAME:=python-iso4217
PKG_VERSION:=1.14.20250512
PKG_RELEASE:=1

PYPI_NAME:=iso4217
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=PD
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-iso4217
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ISO 4217 currency data package
  URL:=https://github.com/dahlia/iso4217
  DEPENDS:=+python3-xml
endef

define Package/python3-iso4217/description
  ISO 4217 currency data package for Python.
endef

$(eval $(call Py3Package,python3-iso4217))
$(eval $(call BuildPackage,python3-iso4217))
$(eval $(call BuildPackage,python3-iso4217-src))
