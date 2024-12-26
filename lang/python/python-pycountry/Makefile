include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycountry
PKG_VERSION:=24.6.1
PKG_RELEASE:=1

PYPI_NAME:=pycountry
PKG_HASH:=b61b3faccea67f87d10c1f2b0fc0be714409e8fcdcc1315613174f6466c10221

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pycountry
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ISO country, subdivision, language, currency and script definitions and their translations
  URL:=https://github.com/pycountry/pycountry
  DEPENDS:=+python3
endef

define Package/python3-pycountry/description
The package includes a copy from Debian's pkg-isocodes and makes the data accessible through a Python API.
endef

$(eval $(call Py3Package,python3-pycountry))
$(eval $(call BuildPackage,python3-pycountry))
$(eval $(call BuildPackage,python3-pycountry-src))
