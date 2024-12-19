include $(TOPDIR)/rules.mk

PKG_NAME:=python-unicode-rbnf
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=unicode_rbnf
PKG_HASH:=cbe723a11673c5223ffb37cd472e3f80c8854a4f5a99f5b3ff03b43d9aa60bef

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-unicode-rbnf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Rule-based number formatting using Unicode CLDR data
  URL:=https://github.com/rhasspy/unicode-rbnf
  DEPENDS:=+python3
endef

define Package/python3-unicode-rbnf/description
  A pure Python implementation of rule based number formatting (RBNF) using the Unicode Common Locale Data Repository (CLDR).
endef

$(eval $(call Py3Package,python3-unicode-rbnf))
$(eval $(call BuildPackage,python3-unicode-rbnf))
$(eval $(call BuildPackage,python3-unicode-rbnf-src))
