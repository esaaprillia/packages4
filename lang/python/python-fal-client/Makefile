include $(TOPDIR)/rules.mk

PKG_NAME:=python-fal-client
PKG_VERSION:=1.0.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= fal_client
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fal-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for fal.ai
  URL:=https://github.com/fal-ai/fal
  DEPENDS:= \
	+python3 \
	+python3-aiofiles \
	+python3-asyncstdlib \
	+python3-httpx \
	+python3-httpx-sse \
	+python3-msgpack \
	+python3-websockets
endef

define Package/python3-fal-client/description
This is a Python client library for interacting with ML models deployed on fal.ai.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fal-client))
$(eval $(call BuildPackage,python3-fal-client))
$(eval $(call BuildPackage,python3-fal-client-src))
