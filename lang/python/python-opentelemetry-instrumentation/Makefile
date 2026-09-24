include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-instrumentation
PKG_VERSION:=0.65b0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_instrumentation
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-instrumentation
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Instrumentation Tools & Auto Instrumentation for OpenTelemetry Python
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3 \
	+python3-opentelemetry-api \
	+python3-opentelemetry-semantic-conventions \
	+python3-wrapt \
	+python3-packaging
endef

define Package/python3-opentelemetry-instrumentation/description
Instrumentation Tools & Auto Instrumentation for OpenTelemetry Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-instrumentation))
$(eval $(call BuildPackage,python3-opentelemetry-instrumentation))
$(eval $(call BuildPackage,python3-opentelemetry-instrumentation-src))
