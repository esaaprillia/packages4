include $(TOPDIR)/rules.mk

PKG_NAME:=python-oauth2client
PKG_VERSION:=4.1.3
PKG_RELEASE:=1

PYPI_NAME:=oauth2client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-oauth2client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuth 2.0 client library
  URL:=http://github.com/google/oauth2client/
  DEPENDS:=+python3 +python3-httplib2 +python3-pyasn1 +python3-pyasn1-modules +python3-rsa +python3-six
endef

define Package/python3-oauth2client/description
oauth2client is a client library for OAuth 2.0.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-oauth2client))
$(eval $(call BuildPackage,python3-oauth2client))
$(eval $(call BuildPackage,python3-oauth2client-src))
