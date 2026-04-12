include $(TOPDIR)/rules.mk

PKG_NAME:=python-azure-kusto-ingest
PKG_VERSION:=6.0.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=azure_kusto_ingest
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-uv-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-azure-kusto-ingest
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Kusto Ingest Client
  URL:=https://github.com/Azure/azure-kusto-python
  DEPENDS:= \
	+python3-light \
	+python3-azure-kusto-data \
	+python3-azure-storage-blob \
	+python3-azure-storage-queue \
	+python3-tenacity
endef

define Package/python3-azure-kusto-ingest/description
Kusto Python Ingest Client Library provides the capability to ingest data into Kusto clusters using Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-azure-kusto-ingest))
$(eval $(call BuildPackage,python3-azure-kusto-ingest))
$(eval $(call BuildPackage,python3-azure-kusto-ingest-src))
