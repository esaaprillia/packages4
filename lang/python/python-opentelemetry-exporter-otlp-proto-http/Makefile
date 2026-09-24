include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-exporter-otlp-proto-http
PKG_VERSION:=1.44.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_exporter_otlp_proto_http
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-exporter-otlp-proto-http
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Collector Protobuf over HTTP Exporter
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3 \
	+python3-googleapis-common-protos \
	+python3-opentelemetry-api \
	+python3-opentelemetry-proto \
	+python3-opentelemetry-sdk \
	+python3-opentelemetry-exporter-otlp-proto-common \
	+python3-opentelemetry-exporter-otlp-common \
	+python3-opentelemetry-exporter-http-transport \
	+python3-urllib3 \
	+python3-typing-extensions 
endef

define Package/python3-opentelemetry-exporter-otlp-proto-http/description
This library allows to export data to the OpenTelemetry Collector using the OpenTelemetry Protocol using Protobuf over HTTP.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-exporter-otlp-proto-http))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-otlp-proto-http))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-otlp-proto-http-src))
