include $(TOPDIR)/rules.mk

PKG_NAME:=python-agent-client-protocol
PKG_VERSION:=0.12.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=agent_client_protocol
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-agent-client-protocol
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python implement of Agent Client Protocol (ACP, by Zed Industries)
  URL:=https://github.com/agentclientprotocol/python-sdk
  DEPENDS:= \
	+python3 \
	+python3-pydantic \
	+python3-pydantic-core
endef

define Package/python3-agent-client-protocol/description
Build ACP-compliant agents and clients in Python with generated schema models, asyncio transports, helper builders, and runnable demos.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-agent-client-protocol))
$(eval $(call BuildPackage,python3-agent-client-protocol))
$(eval $(call BuildPackage,python3-agent-client-protocol-src))
