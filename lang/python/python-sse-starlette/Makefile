include $(TOPDIR)/rules.mk

PKG_NAME:=python-sse-starlette
PKG_VERSION:=3.4.4
PKG_RELEASE:=1

PYPI_NAME:=sse_starlette
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sse-starlette
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=SSE plugin for Starlette
  URL:=https://github.com/sysid/sse-starlette
  DEPENDS:=+python3 +python3-anyio
endef

define Package/python3-sse-starlette/description
Server-Sent Events for Starlette and FastAPI
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sse-starlette))
$(eval $(call BuildPackage,python3-sse-starlette))
$(eval $(call BuildPackage,python3-sse-starlette-src))
