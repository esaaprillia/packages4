include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-maps-routing
PKG_VERSION:=0.10.0
PKG_RELEASE:=1

PYPI_NAME:=google_maps_routing
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-maps-routing
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Maps Routing API client library
  URL:=https://github.com/googleapis/google-cloud-python
  DEPENDS:= \
	+python3 \
	+python3-google-api-core \
	+python3-google-auth \
	+python3-grpcio \
	+python3-proto-plus \
	+python3-protobuf \
	+python3-google-geo-type
endef

define Package/python3-google-maps-routing/description
Google Maps Routing: Help your users find the ideal way to get from A to Z with comprehensive data and real-time traffic.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-maps-routing))
$(eval $(call BuildPackage,python3-google-maps-routing))
$(eval $(call BuildPackage,python3-google-maps-routing-src))
