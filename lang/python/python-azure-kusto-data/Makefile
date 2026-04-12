include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-kusto-data
PKG_VERSION:=6.0.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=

PYPI_NAME:=azure_kusto_data
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-uv-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-kusto-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Kusto Data Client
  URL:=https://github.com/Azure/azure-kusto-python
  DEPENDS:= \
	+python3-light \
	+python3-dateutil \
	+python3-requests \
	+python3-azure-identity \
	+python3-msal \
	+python3-ijson \
	+python3-azure-core
endef

define Package/python3-azure-kusto-data/description
Kusto Python Client Library provides the capability to query Kusto clusters using Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-kusto-data))
$(eval $(call BuildPackage,python3-azure-kusto-data))
$(eval $(call BuildPackage,python3-azure-kusto-data-src))
