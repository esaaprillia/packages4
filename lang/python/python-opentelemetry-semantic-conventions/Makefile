include $(TOPDIR)/rules.mk

PKG_NAME:=python-opentelemetry-semantic-conventions
PKG_VERSION:=0.61b0
PKG_RELEASE:=1

PYPI_NAME:=opentelemetry_semantic_conventions
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

define Package/python3-opentelemetry-semantic-conventions
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OpenTelemetry Semantic Conventions
  URL:=https://opentelemetry.io/
  DEPENDS:=+python3 +python3-opentelemetry-api +python3-typing-extensions
endef

define Package/python3-opentelemetry-semantic-conventions/description
This library contains generated code for the semantic conventions defined by the OpenTelemetry specification.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opentelemetry-semantic-conventions))
$(eval $(call BuildPackage,python3-opentelemetry-semantic-conventions))
$(eval $(call BuildPackage,python3-opentelemetry-semantic-conventions-src))
