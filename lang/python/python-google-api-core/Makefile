include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-api-core
PKG_VERSION:=2.30.0
PKG_RELEASE:=1

PYPI_NAME:=google_api_core
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-api-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google API client core library
  URL:=https://googleapis.dev/python/google-api-core
  DEPENDS:= \
	+python3-light \
	+python3-googleapis-common-protos \
	+python3-protobuf \
	+python3-proto-plus \
	+python3-google-auth \ 
	+python3-requests
endef

define Package/python3-google-api-core/description
This library is not meant to stand-alone. Instead it defines common helpers used by all Google API clients.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-api-core))
$(eval $(call BuildPackage,python3-google-api-core))
$(eval $(call BuildPackage,python3-google-api-core-src))
