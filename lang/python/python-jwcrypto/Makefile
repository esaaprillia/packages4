include $(TOPDIR)/rules.mk

PKG_NAME:=python-jwcrypto
PKG_VERSION:=1.5.7
PKG_RELEASE:=1

PYPI_NAME:=jwcrypto
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-jwcrypto
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Implementation of JOSE Web standards
  URL:=http://jwcrypto.readthedocs.org/
  DEPENDS:=+python3 +python3-cryptography +python3-typing-extensions
endef

define Package/python3-jwcrypto/description
Implements JWK,JWS,JWE specifications using python-cryptography
endef

$(eval $(call Py3Package,python3-jwcrypto))
$(eval $(call BuildPackage,python3-jwcrypto))
$(eval $(call BuildPackage,python3-jwcrypto-src))
