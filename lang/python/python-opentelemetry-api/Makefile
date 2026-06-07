include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-api
PKG_VERSION:=1.42.1
PKG_RELEASE:=1

PYPI_NAME:=opentelemetry_api
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

define Package/python3-opentelemetry-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Python API
  URL:=https://opentelemetry.io/
  DEPENDS:=+python3 +python3-typing-extensions +python3-importlib-metadata
endef

define Package/python3-opentelemetry-api/description
OpenTelemetry Python API and SDK
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-api))
$(eval $(call BuildPackage,python3-opentelemetry-api))
$(eval $(call BuildPackage,python3-opentelemetry-api-src))
