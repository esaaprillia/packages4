include $(TOPDIR)/rules.mk

PKG_NAME:=python-hermes-agent
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=hermes_agent
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hermes-agent
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The self-improving AI agent — creates skills from experience, improves them during use, and runs anywhere
  URL:=https://hermes-agent.nousresearch.com/
  DEPENDS:= \
	+python3 \
	+python3-openai \
	+python3-certifi \
	+python3-dotenv \
	+python3-fire \
	+python3-httpx \
	+python3-socksio \
	+python3-rich \
	+python3-tenacity \
	+python3-yaml \
	+python3-ruamel-yaml \
	+python3-requests \
	+python3-jinja2 \
	+python3-pydantic \
	+python3-prompt-toolkit \
	+python3-croniter \
	+python3-packaging \
	+python3-markdown \
	+python3-pyjwt \
	+python3-urllib3 \
	+python3-cryptography \
	+python3-psutil \
	+python3-websockets \
	+python3-pathspec \
	+python3-fastapi \
	+python3-uvicorn \
	+python3-httptools \
	+python3-watchfiles \
	+python3-multipart \
	+python3-pillow
endef

define Package/python3-hermes-agent/description
The self-improving AI agent built by Nous Research. It's the only agent with a built-in learning loop — it creates skills from experience, improves them during use, nudges itself to persist knowledge, searches its own past conversations, and builds a deepening model of who you are across sessions.
endef

$(eval $(call Py3Package,python3-hermes-agent))
$(eval $(call BuildPackage,python3-hermes-agent))
$(eval $(call BuildPackage,python3-hermes-agent-src))
