include $(TOPDIR)/rules.mk

PKG_NAME:=python-hermes-agent
PKG_VERSION:=2026.9.14
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=hermes-agent
PKG_SOURCE_URL:=https://github.com/NousResearch/hermes-agent/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PYTHON3_PKG_BUILD:=0
PKG_BUILD_DEPENDS:=node/host python-uv/host

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
	+python3-firecrawl-anydoc \
	+python3-pydantic \
	+python3-prompt-toolkit \
	+python3-croniter \
	+python3-snowballstemmer \
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
	+python3-multipart \
	+python3-pillow \
	+python3-pillow-heif \
	+python3-nemo-relay \
	+python3-telegram-bot \
	+python3-tornado \
	+python3-discord-py \
	+python3-pynacl \
	+python3-davey \
	+python3-aiohttp \
	+python3-brotlicffi \
	+python3-slack-bolt \
	+python3-slack-sdk \
	+python3-qrcode \
	+ripgrep
endef

define Package/python3-hermes-agent/description
The self-improving AI agent built by Nous Research. It's the only agent with a built-in learning loop — it creates skills from experience, improves them during use, nudges itself to persist knowledge, searches its own past conversations, and builds a deepening model of who you are across sessions.
endef

PYTHON3_PKG_WHEEL_NAME:=hermes_agent
PYTHON3_PKG_WHEEL_VERSION:=0.21.3
PYTHON3_PKG_SETUP_VARS += HERMES_NIX_BUILD=1

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC)
TARGET_CPPFLAGS+=$(FPIC)

define Build/Compile
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --workspace web
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --workspace ui-tui
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --workspace web
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build:ink --workspace ui-tui
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --workspace ui-tui
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/web/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/web/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	rm -f $(PKG_BUILD_DIR)/ui-tui/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/ui-tui/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	mkdir -p $(PKG_BUILD_DIR)/hermes_cli/tui_dist
	$(CP) $(PKG_BUILD_DIR)/ui-tui/dist/entry.js $(PKG_BUILD_DIR)/hermes_cli/tui_dist/entry.js
	$(call Py3Build/Compile)
	$(call Py3Build/Install)
endef

define Py3Package/python3-hermes-agent/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/hermes_cli
	$(CP) $(PKG_BUILD_DIR)/hermes_cli/web_dist $(1)$(PYTHON3_PKG_DIR)/hermes_cli/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)/hermes_cli/tui_dist
	$(CP) $(PKG_BUILD_DIR)/ui-tui/dist/entry.js $(1)$(PYTHON3_PKG_DIR)/hermes_cli/tui_dist/
endef

$(eval $(call Py3Package,python3-hermes-agent))
$(eval $(call BuildPackage,python3-hermes-agent))
$(eval $(call BuildPackage,python3-hermes-agent-src))
