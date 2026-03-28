include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-auth-httplib2
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=google_auth_httplib2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-auth-httplib2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Authentication Library: httplib2 transport
  URL:=https://github.com/GoogleCloudPlatform/google-auth-library-python-httplib2
  DEPENDS:=+python3 +python3-google-auth +python3-httplib2
endef

define Package/python3-google-auth-httplib2/description
The library was created to help clients migrate from oauth2client to google-auth, however this library is no longer maintained. For any new usages please see provided transport layers by google-auth library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-auth-httplib2))
$(eval $(call BuildPackage,python3-google-auth-httplib2))
$(eval $(call BuildPackage,python3-google-auth-httplib2-src))
