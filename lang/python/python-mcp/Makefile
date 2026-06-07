include $(TOPDIR)/rules.mk

PKG_NAME:=python-mcp
PKG_VERSION:=1.27.2
PKG_RELEASE:=1

PYPI_NAME:=mcp
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-mcp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Model Context Protocol SDK
  URL:=https://github.com/modelcontextprotocol/python-sdk
  DEPENDS:= \
	+python3-light \
	+python3-anyio \
	+python3-httpx \
	+python3-httpx-sse \
	+python3-pydantic \
	+python3-starlette \
	+python3-multipart \
	+python3-sse-starlette \
	+python3-pydantic-settings \
	+python3-uvicorn \
	+python3-jsonschema \
	+python3-pyjwt \
	+python3-typing-extensions \
	+python3-typing-inspection \
	+python3-opentelemetry-api
endef

define Package/python3-mcp/description
The Model Context Protocol allows applications to provide context for LLMs in a standardized way, separating the concerns of providing context from the actual LLM interaction.
endef

$(eval $(call Py3Package,python3-mcp))
$(eval $(call BuildPackage,python3-mcp))
$(eval $(call BuildPackage,python3-mcp-src))
