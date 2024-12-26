include $(TOPDIR)/rules.mk

PKG_NAME:=python-dacite
PKG_VERSION:=1.8.1
PKG_RELEASE:=1

PYPI_NAME:=dacite
PKG_SOURCE_URL:=https://github.com/konradhalas/dacite/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dacite
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple creation of data classes from dictionaries.
  URL:=https://github.com/konradhalas/dacite
  DEPENDS:=+python3
endef

define Package/python3-dacite/description
This module simplifies creation of data classes (PEP 557) from dictionaries.
endef

$(eval $(call Py3Package,python3-dacite))
$(eval $(call BuildPackage,python3-dacite))
$(eval $(call BuildPackage,python3-dacite-src))
