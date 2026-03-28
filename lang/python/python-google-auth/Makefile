include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-auth
PKG_VERSION:=2.49.1
PKG_RELEASE:=1

PYPI_NAME:=google_auth
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-google-auth
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Authentication Library
  URL:=https://github.com/googleapis/google-auth-library-python
  DEPENDS:=+python3 +python3-pyasn1-modules +python3-cryptography
endef

define Package/python3-google-auth/description
  This library simplifies using Google’s various server-to-server authentication mechanisms to access Google APIs.
endef

$(eval $(call Py3Package,python3-google-auth))
$(eval $(call BuildPackage,python3-google-auth))
$(eval $(call BuildPackage,python3-google-auth-src))
