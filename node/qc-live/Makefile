include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=qc-live
PKG_NAME:=$(PKG_NPM_NAME)
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
#PKG_HASH:=e668a26657a9a95ee0d903c6acfaf62995b5a219ac3a673773eded08b4465e5b

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/firmwarecostum/streamflow/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/himanshu-hivecorp/QC-Live.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=35aba1a0779a3c562be489b27bd405cbe9787b3e
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/qc-live
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=QC Live - Professional 24/7 Streaming Application
  URL:=https://github.com/himanshu-hivecorp/QC-Live
  DEPENDS:=+libpthread +libstdcpp +node
endef

define Package/qc-live/description
 A powerful, self-hosted streaming application that enables 24/7 live streaming to YouTube, Twitch, and other RTMP platforms.
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC) -std=c++20
TARGET_CPPFLAGS+=$(FPIC) -std=c++20

define Build/Compile
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --prefer-offline --no-audit --global-style --install-strategy=shallow --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU)
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --prefer-offline --no-audit --global-style --install-strategy=shallow --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU)
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	rm -rf $(PKG_BUILD_DIR)/node_modules/bcrypt/prebuilds
	ls $(PKG_BUILD_DIR)/*
endef

define Package/qc-live/install
	$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(CP) $(PKG_BUILD_DIR)/{package.json,README.md,LICENSE} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/{components,lib,pages,public} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/{node_modules,scripts,styles} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/{types,next-env.d.ts,*.js,*.json} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(INSTALL_DIR) $(1)/usr/lib/node_modules
	$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

define Package/qc-live/postrm
#!/bin/sh
rm /usr/lib/node_modules/qc-live || true
rm -rf /usr/lib/node/qc-live || true
endef

$(eval $(call BuildPackage,qc-live))
