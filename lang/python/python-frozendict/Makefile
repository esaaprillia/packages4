include $(TOPDIR)/rules.mk

PKG_NAME:=python-frozendict
PKG_VERSION:=2.4.6
PKG_RELEASE:=1

PYPI_NAME:=frozendict
PKG_HASH:=df7cd16470fbd26fc4969a208efadc46319334eb97def1ddf48919b351192b8e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-frozendict
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A simple immutable dictionary
  URL:=https://github.com/Marco-Sulla/python-frozendict
  DEPENDS:=+python3
endef

define Package/python3-frozendict/description
A simple immutable dictionary for Python
endef

$(eval $(call Py3Package,python3-frozendict))
$(eval $(call BuildPackage,python3-frozendict))
$(eval $(call BuildPackage,python3-frozendict-src))
