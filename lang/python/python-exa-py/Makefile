include $(TOPDIR)/rules.mk

PKG_NAME:=python-exa-py
PKG_VERSION:=2.22.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=exa_py
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host
HOST_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-exa-py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python SDK for Exa API.
  URL:=https://github.com/exa-labs/exa-py
  DEPENDS:= \
	+python3 \
	+python3-requests \
	+python3-typing-extensions \
	+python3-openai \
	+python3-pydantic \
	+python3-httpx \
	+python3-httpcore \
	+python3-dotenv
endef

define Package/python3-exa-py/description
The official Python SDK for Exa, the web search API for AI.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-exa-py))
$(eval $(call BuildPackage,python3-exa-py))
$(eval $(call BuildPackage,python3-exa-py-src))
