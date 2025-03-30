include $(TOPDIR)/rules.mk

PKG_NAME:=python-dacite
PKG_VERSION:=1.9.2
PKG_RELEASE:=1

PYPI_NAME:=dacite
PKG_HASH:=6ccc3b299727c7aa17582f0021f6ae14d5de47c7227932c47fec4cdfefd26f09

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
