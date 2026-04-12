include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-eventhub
PKG_VERSION:=5.15.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_eventhub
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-eventhub
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Event Hubs Client Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python/
  DEPENDS:= \
	+python3-light \
	+python3-azure-core \
	+python3-typing-extensions
endef

define Package/python3-azure-eventhub/description
Azure Event Hubs is a highly scalable publish-subscribe service that can ingest millions of events per second and stream them to multiple consumers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-eventhub))
$(eval $(call BuildPackage,python3-azure-eventhub))
$(eval $(call BuildPackage,python3-azure-eventhub-src))
