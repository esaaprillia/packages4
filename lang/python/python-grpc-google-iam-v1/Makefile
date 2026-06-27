include $(TOPDIR)/rules.mk

PKG_NAME:=python-grpc-google-iam-v1
PKG_VERSION:=0.14.4
PKG_RELEASE:=1

PYPI_NAME:=grpc_google_iam_v1
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-grpc-google-iam-v1
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=IAM API client library
  URL:=https://github.com/googleapis/google-cloud-python
  DEPENDS:=+python3 +python3-grpcio +python3-googleapis-common-protos +python3-protobuf
endef

define Package/python3-grpc-google-iam-v1/description
Python idiomatic clients for Google Cloud Platform services.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-grpc-google-iam-v1))
$(eval $(call BuildPackage,python3-grpc-google-iam-v1))
$(eval $(call BuildPackage,python3-grpc-google-iam-v1-src))
