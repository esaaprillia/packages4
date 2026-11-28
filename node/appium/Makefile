include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=appium
PKG_NAME:=$(PKG_NPM_NAME)
PKG_VERSION:=4.0.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
PKG_HASH:=skip

#PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/decolua/9router/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

#PKG_SOURCE_URL:=https://github.com/appium/appium.git
#PKG_SOURCE_PROTO:=git
#PKG_SOURCE_VERSION:=19b5d082d57bad563511d5120ef7fd8da63788b3
#PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/appium
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cross-platform automation framework for all kinds of apps, built on top of the W3C WebDriver protocol
  URL:=https://www.npmjs.com/package/appium
  DEPENDS:=+libpthread +libc +libstdcpp +librt
endef

define Package/appium/description
 Appium is an open-source automation framework that provides WebDriver-based automation possibilities for a wide range of different mobile, desktop and IoT platforms.
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

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
	npm install
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	ls -l $(PKG_BUILD_DIR)/* && ls -l $(PKG_BUILD_DIR)/.*
endef

define Package/appium/install
	$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(CP) $(PKG_BUILD_DIR)/{*.md,LICENSE,*.json,*.mjs,*.js} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/{.next,node_modules,gitbook,public,i18n,scripts,images,skills,captain-definition,src,cli,tests,open-sse,version.date} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(LN) ../lib/node/$(PKG_NPM_NAME)/cli.js $(1)/usr/bin/9router
	$(INSTALL_DIR) $(1)/usr/lib/node_modules
	$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

define Package/appium/postrm
#!/bin/sh
rm /usr/lib/node_modules/appium || true
rm -rf /usr/lib/node/appium || true
endef

$(eval $(call BuildPackage,appium))
