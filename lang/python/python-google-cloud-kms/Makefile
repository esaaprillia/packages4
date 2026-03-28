include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-kms
PKG_VERSION:=3.12.0
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_kms
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-cloud-kms
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Cloud Kms API client library
  URL:=googleapis.github.io/google-cloud-python/
  DEPENDS:=+python3 +python3-google-api-core +python3-google-auth +python3-grpcio +python3-proto-plus +python3-protobuf +python3-grpc-google-iam-v1
endef

define Package/python3-google-cloud-kms/description
Google Cloud Key Management Service: a cloud-hosted key management service that lets you manage cryptographic keys for your cloud services the same way you do on-premises.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-cloud-kms))
$(eval $(call BuildPackage,python3-google-cloud-kms))
$(eval $(call BuildPackage,python3-google-cloud-kms-src))
