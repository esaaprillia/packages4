include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-auth-oauthlib
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=google_auth_oauthlib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-auth-oauthlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Authentication Library
  URL:=https://github.com/googleapis/google-auth-library-python-oauthlib
  DEPENDS:=+python3 +python3-click +python3-google-auth +python3-requests-oauthlib
endef

define Package/python3-google-auth-oauthlib/description
This library provides oauthlib integration with google-auth.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-auth-oauthlib))
$(eval $(call BuildPackage,python3-google-auth-oauthlib))
$(eval $(call BuildPackage,python3-google-auth-oauthlib-src))
