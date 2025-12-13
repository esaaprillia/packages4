include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-sse-client2
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=aiohttp-sse-client2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pytest-runner/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiohttp-sse-client2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Server-Sent Event python client base on aiohttp
  URL:=https://github.com/JelleZijlstra/aiohttp-sse-client2
  DEPENDS:=+python3 +python3-aiohttp +python3-attrs +python3-multidict +python3-yarl
endef

define Package/python3-aiohttp-sse-client2/description
This is a fork of the aiohttp-sse-client project by Jason Hu.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiohttp-sse-client2))
$(eval $(call BuildPackage,python3-aiohttp-sse-client2))
$(eval $(call BuildPackage,python3-aiohttp-sse-client2-src))
