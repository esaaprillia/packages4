include $(TOPDIR)/rules.mk

PKG_NAME:=python-mcp-types
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=mcp_types
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-uv-dynamic-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mcp-types
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Model Context Protocol wire types
  URL:=https://modelcontextprotocol.io/
  DEPENDS:= \
	+python3 \
	+python3-pydantic \
	+python3-typing-extensions
endef

define Package/python3-mcp-types/description
The wire types for the Model Context Protocol.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mcp-types))
$(eval $(call BuildPackage,python3-mcp-types))
$(eval $(call BuildPackage,python3-mcp-types-src))
