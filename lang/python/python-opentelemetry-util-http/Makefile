include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-util-http
PKG_VERSION:=0.65b0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=opentelemetry_util_http
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-util-http
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Web util for OpenTelemetry
  URL:=https://github.com/open-telemetry/opentelemetry-python
  DEPENDS:= \
	+python3
endef

define Package/python3-opentelemetry-util-http/description
This library provides ASGI, WSGI middleware and other HTTP-related functionality that is common to instrumented web frameworks (such as Django, Starlette, FastAPI, etc.) to track requests timing through OpenTelemetry.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-util-http))
$(eval $(call BuildPackage,python3-opentelemetry-util-http))
$(eval $(call BuildPackage,python3-opentelemetry-util-http-src))
