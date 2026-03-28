include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-api-python-client
PKG_VERSION:=2.193.0
PKG_RELEASE:=1

PYPI_NAME:=google_api_python_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-api-python-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google API Client Library for Python
  URL:=https://github.com/googleapis/google-api-python-client/
  DEPENDS:=+python3 +python3-httplib2 +python3-google-auth +python3-google-auth-httplib2 +python3-google-api-core +python3-uritemplate
endef

define Package/python3-google-api-python-client/description
This is the Google API Python client library for Google's discovery based APIs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-api-python-client))
$(eval $(call BuildPackage,python3-google-api-python-client))
$(eval $(call BuildPackage,python3-google-api-python-client-src))
