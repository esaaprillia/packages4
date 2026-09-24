include $(TOPDIR)/rules.mk

PKG_NAME:=python-daytona
PKG_VERSION:=0.216.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=daytona
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-daytona
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python SDK for Daytona
  URL:=https://github.com/daytonaio/daytona
  DEPENDS:= \
	+python3 \
	+python3-dotenv \
	+python3-pydantic \
	+python3-deprecated \
	+python3-httpx \
	+python3-httpx-ws \
	+python3-aiohttp \
	+python3-wsproto \
	+python3-aiofiles \
	+python3-toml \
	+python3-obstore \
	+python3-multipart \
	+python3-typing-extensions \
	+python3-opentelemetry-api \
	+python3-opentelemetry-sdk \
	+python3-opentelemetry-exporter-otlp-proto-http \
	+python3-opentelemetry-instrumentation-aiohttp-client \
	+python3-urllib3 \
	+python3-socketio \
	+python3-requests \
	+python3-websocket-client \
	+python3-aiohttp \
	+python3-daytona-api-client \
	+python3-daytona-api-client-async \
	+python3-daytona-toolbox-api-client \
	+python3-daytona-toolbox-api-client-async \
	+python3-daytona-analytics-api-client \
	+python3-daytona-analytics-api-client-async
endef

define Package/python3-daytona/description
The official Python SDK for Daytona, a secure and elastic infrastructure for running AI-generated code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-daytona))
$(eval $(call BuildPackage,python3-daytona))
$(eval $(call BuildPackage,python3-daytona-src))
