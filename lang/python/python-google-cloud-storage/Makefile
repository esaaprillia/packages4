include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-storage
PKG_VERSION:=3.10.1
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_storage
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-cloud-storage
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Google Cloud Storage API client library
  URL:=https://github.com/googleapis/python-storage
  DEPENDS:=+python3 +python3-google-auth +python3-google-api-core +python3-google-cloud-core +python3-google-resumable-media +python3-requests +python3-google-crc32c
endef

define Package/python3-google-cloud-storage/description
Google Cloud Storage is a managed service for storing unstructured data.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-cloud-storage))
$(eval $(call BuildPackage,python3-google-cloud-storage))
$(eval $(call BuildPackage,python3-google-cloud-storage-src))
