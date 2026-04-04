include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-geo-type
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=google_geo_type
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-geo-type
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Geo Type API client library
  URL:=https://github.com/googleapis/google-cloud-python
  DEPENDS:= \
	+python3 \
	+python3-google-api-core \
	+python3-google-auth \
	+python3-grpcio \
	+python3-proto-plus \
	+python3-protobuf
endef

define Package/python3-google-geo-type/description
Python Client for Geo Type Protos
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-geo-type))
$(eval $(call BuildPackage,python3-google-geo-type))
$(eval $(call BuildPackage,python3-google-geo-type-src))
