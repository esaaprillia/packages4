include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-sdk
PKG_VERSION:=1.40.0
PKG_RELEASE:=1

PYPI_NAME:=opentelemetry_sdk
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opentelemetry-sdk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Python SDK
  URL:=https://github.com/open-telemetry/opentelemetry-python/opentelemetry-sdk
  DEPENDS:=+python3 +python3-opentelemetry-api +python3-opentelemetry-semantic-conventions +python3-typing-extensions
endef

define Package/python3-opentelemetry-sdk/description
Python idiomatic clients for Google Cloud Platform services.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-sdk))
$(eval $(call BuildPackage,python3-opentelemetry-sdk))
$(eval $(call BuildPackage,python3-opentelemetry-sdk-src))
