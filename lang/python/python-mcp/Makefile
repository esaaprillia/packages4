include $(TOPDIR)/rules.mk

PKG_NAME:=python-mcp
PKG_VERSION:=1.23.3
PKG_RELEASE:=1

PYPI_NAME:=mcp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mcp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Model Context Protocol SDK
  URL:=https://modelcontextprotocol.io/
  DEPENDS:=+python3 +python3-anyio +python3-httpx +python3-httpx-sse +python3-pydantic +python3-starlette +python3-multipart +python3-sse-starlette +python3-pydantic-settings +python3-uvicorn +python3-jsonschema +python3-pyjwt +python3-typing-extensions +python3-typing-inspection
endef

define Package/python3-mcp/description
Python implementation of the Model Context Protocol (MCP)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mcp))
$(eval $(call BuildPackage,python3-mcp))
$(eval $(call BuildPackage,python3-mcp-src))
