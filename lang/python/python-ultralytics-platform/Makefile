include $(TOPDIR)/rules.mk

PKG_NAME:=python-ultralytics-platform
PKG_VERSION:=0.1.122
PKG_RELEASE:=1

PYPI_NAME:=ultralytics_platform
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-uv-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ultralytics-platform
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typed Python SDK for the Ultralytics Platform API
  URL:=https://github.com/ultralytics/sdk
  DEPENDS:=+python3 +python3-httpx
endef

define Package/python3-ultralytics-platform/description
Typed synchronous and asynchronous Python clients generated from the Ultralytics Platform API contract with Ultralytics OpenAPI.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ultralytics-platform))
$(eval $(call BuildPackage,python3-ultralytics-platform))
$(eval $(call BuildPackage,python3-ultralytics-platform-src))
