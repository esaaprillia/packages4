include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=open5gs
PKG_NAME:=node-$(PKG_NPM_NAME)
PKG_VERSION:=2.7.7
PKG_RELEASE:=1

#PKG_SOURCE:=open5gs-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
#PKG_HASH:=skip

PKG_SOURCE:=open5gs-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/open5gs/open5gs/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/node-open5gs
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=open5gs node webui
  URL:=https://github.com/open5gs/open5gs/webui
  DEPENDS:=
endef

define Package/node-open5gs/description
 open5gs node webui
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC)
TARGET_CPPFLAGS+=$(FPIC)

define Build/Compile
	rm -rf $(PKG_BUILD_DIR)/prebuilds
	cd $(PKG_BUILD_DIR)/webui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm clean-install --prefer-offline --no-audit --global-style --install-strategy=shallow --no-save --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU) --ignore-scripts
	cd $(PKG_BUILD_DIR)/webui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --prefer-offline --no-audit --global-style --install-strategy=shallow --no-save --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU) --ignore-scripts
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/webui/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/webui/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
endef

define Package/node-open5gs/install
	$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(CP) $(PKG_BUILD_DIR)/{LICENSE,README.md} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/webui/{node_modules,pages,server,src,static,package.json,.next} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(INSTALL_DIR) $(1)/usr/lib/node_modules
	$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

define Package/node-open5gs/postrm
#!/bin/sh
rm /usr/lib/node_modules/open5gs || true
rm -rf /usr/lib/node/open5gs || true
endef

$(eval $(call BuildPackage,node-open5gs))
