include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-exporter-http-transport
PKG_VERSION:=0.65b0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_exporter_http_transport
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-exporter-http-transport
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Exporters HTTP transport
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3 \
	+python3-opentelemetry-api
endef

define Package/python3-opentelemetry-exporter-http-transport/description
This package provides shared HTTP transport abstractions used by OpenTelemetry exporters.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-exporter-http-transport))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-http-transport))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-http-transport-src))
