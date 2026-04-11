include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-core
PKG_VERSION:=1.39.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_core
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Azure Core Library for Python
  URL:=https://github.com/Azure/azure-sdk-for-python
  DEPENDS:= \
	+python3-light \
	+python3-requests \
	+python3-typing-extensions
endef

define Package/python3-azure-core/description
Azure core provides shared exceptions and modules for Python SDK client libraries.
These libraries follow the Azure SDK Design Guidelines for Python .
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-core))
$(eval $(call BuildPackage,python3-azure-core))
$(eval $(call BuildPackage,python3-azure-core-src))
