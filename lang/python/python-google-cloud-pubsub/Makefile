include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-pubsub
PKG_VERSION:=2.36.0
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_pubsub
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-cloud-pubsub
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Cloud Pub/Sub API client library
  URL:=https://github.com/googleapis/python-pubsub
  DEPENDS:=+python3 +python3-grpcio +python3-google-auth +python3-google-api-core +python3-proto-plus +python3-protobuf +python3-grpc-google-iam-v1 +python3-grpcio-status +python3-opentelemetry-sdk +python3-libcst
endef

define Package/python3-google-cloud-pubsub/description
Google Cloud Pub / Sub is a fully-managed real-time messaging service that allows you to send and receive messages between independent applications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-cloud-pubsub))
$(eval $(call BuildPackage,python3-google-cloud-pubsub))
$(eval $(call BuildPackage,python3-google-cloud-pubsub-src))
