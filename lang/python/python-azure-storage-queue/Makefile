include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-storage-queue
PKG_VERSION:=12.15.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_storage_queue
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-storage-queue
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Azure Queue Storage Client Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python/
  DEPENDS:= \
	+python3-light \
	+python3-azure-core \
	+python3-cryptography \
	+python3-typing-extensions \
	+python3-isodate
endef

define Package/python3-azure-storage-queue/description
Azure Queue storage is a service for storing large numbers of messages that can be accessed from anywhere in the world via authenticated calls using HTTP or HTTPS.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-storage-queue))
$(eval $(call BuildPackage,python3-azure-storage-queue))
$(eval $(call BuildPackage,python3-azure-storage-queue-src))
