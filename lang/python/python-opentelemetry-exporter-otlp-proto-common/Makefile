include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-exporter-otlp-proto-common
PKG_VERSION:=1.44.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_exporter_otlp_proto_common
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-exporter-otlp-proto-common
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Protobuf encoding
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3 \
	+python3-opentelemetry-proto
endef

define Package/python3-opentelemetry-exporter-otlp-proto-common/description
This library is provided as a convenience to encode to Protobuf.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-exporter-otlp-proto-common))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-otlp-proto-common))
$(eval $(call BuildPackage,python3-opentelemetry-exporter-otlp-proto-common-src))
