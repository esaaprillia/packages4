include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-storage-blob
PKG_VERSION:=12.28.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_storage_blob
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-storage-blob
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Blob Storage Client Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python/
  DEPENDS:= \
	+python3-light \
	+python3-azure-core \
	+python3-cryptography \
	+python3-typing-extensions \
	+python3-isodate
endef

define Package/python3-azure-storage-blob/description
Azure Blob storage is Microsoft's object storage solution for the cloud.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-storage-blob))
$(eval $(call BuildPackage,python3-azure-storage-blob))
$(eval $(call BuildPackage,python3-azure-storage-blob-src))
