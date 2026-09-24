include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-instrumentation-aiohttp-client
PKG_VERSION:=0.65b0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_instrumentation_aiohttp_client
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-instrumentation-aiohttp-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry aiohttp client instrumentation
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3 \
	+python3-opentelemetry-api \
	+python3-opentelemetry-instrumentation \
	+python3-opentelemetry-semantic-conventions \
	+python3-opentelemetry-util-http \
	+python3-wrapt
endef

define Package/python3-opentelemetry-instrumentation-aiohttp-client/description
This library allows tracing HTTP requests made by the aiohttp client library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-instrumentation-aiohttp-client))
$(eval $(call BuildPackage,python3-opentelemetry-instrumentation-aiohttp-client))
$(eval $(call BuildPackage,python3-opentelemetry-instrumentation-aiohttp-client-src))
