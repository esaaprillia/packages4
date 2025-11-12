include $(TOPDIR)/rules.mk

PKG_NAME:=python-oauthlib
PKG_VERSION:=3.3.1
PKG_RELEASE:=1

PYPI_NAME:=oauthlib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-oauthlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuth often seems complicated and difficult-to-implement.
  URL:=https://oauthlib.readthedocs.io/
  DEPENDS:=+python3 +python3--pyjwt +python3--blinker +python3--cryptography
endef

define Package/python3-oauthlib/description
A generic, spec-compliant, thorough implementation of the OAuth request-signing logic for Python 3.8+
endef

$(eval $(call Py3Package,python3-oauthlib))
$(eval $(call BuildPackage,python3-oauthlib))
$(eval $(call BuildPackage,python3-oauthlib-src))
