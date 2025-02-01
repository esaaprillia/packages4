include $(TOPDIR)/rules.mk

PKG_NAME:=python-soupsieve
PKG_VERSION:=2.6
PKG_RELEASE:=1

PYPI_NAME:=soupsieve
PKG_HASH:=e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-soupsieve
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A modern CSS selector implementation for Beautiful Soup.
  URL:=https://github.com/facelessuser/soupsieve
  DEPENDS:=+python3-light
endef

define Package/python3-soupsieve/description
Soup Sieve is a CSS selector library designed to be used with Beautiful Soup 4.
It aims to provide selecting, matching, and filtering using modern CSS selectors.
Soup Sieve currently provides selectors from the CSS level 1 specifications up through the latest CSS level 4 drafts and beyond (though some are not yet implemented).
endef

$(eval $(call Py3Package,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve-src))
