include $(TOPDIR)/rules.mk

PKG_NAME:=python-litellm
PKG_VERSION:=1.82.6
PKG_RELEASE:=1

PYPI_NAME:=litellm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-litellm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Library to easily interface with LLM API providers
  URL:=https://litellm.ai/
  DEPENDS:= \
	+python3 \
	+python3-fastuuid \
	+python3-httpx \
	+python3-openai \
	+python3-dotenv \
	+python3-tiktoken \
	+python3-importlib-metadata \
	+python3-tokenizers \
	+python3-click \
	+python3-jinja2 \
	+python3-aiohttp \
	+python3-pydantic \
	+python3-jsonschema
endef

define Package/python3-litellm/description
Call all LLM APIs using the OpenAI format [Bedrock, Huggingface, VertexAI, TogetherAI, Azure, OpenAI, Groq etc.]
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-litellm))
$(eval $(call BuildPackage,python3-litellm))
$(eval $(call BuildPackage,python3-litellm-src))
