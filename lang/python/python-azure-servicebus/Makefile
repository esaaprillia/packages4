include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-servicebus
PKG_VERSION:=7.14.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_servicebus
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-servicebus
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Service Bus Client Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python
  DEPENDS:= \
	+python3-light \
	+python3-azure-core \
	+python3-isodate \
	+python3-typing-extensions
endef

define Package/python3-azure-servicebus/description
Azure Service Bus is a high performance cloud-managed messaging service for providing real-time and fault-tolerant communication between distributed senders and receivers.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-servicebus))
$(eval $(call BuildPackage,python3-azure-servicebus))
$(eval $(call BuildPackage,python3-azure-servicebus-src))
