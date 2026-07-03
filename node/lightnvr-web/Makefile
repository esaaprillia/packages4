include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=lightnvr-web
PKG_NAME:=$(PKG_NPM_NAME)
PKG_VERSION:=2.7.7
PKG_RELEASE:=1

#PKG_SOURCE:=open5gs-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
#PKG_HASH:=skip

#PKG_SOURCE:=open5gs-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/open5gs/open5gs/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/opensensor/lightNVR.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=e33ce83c69eafa4780de1df41410019a67aec907
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/lightnvr-web
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=LightNVR Web Interface
  URL:=https://github.com/opensensor/lightNVR
  DEPENDS:=
endef

define Package/lightnvr-web/description
 LightNVR Web Interface
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
	cd $(PKG_BUILD_DIR)/web; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --prefer-offline --no-audit --global-style --install-strategy=shallow --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU)
	cd $(PKG_BUILD_DIR)/web; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --prefer-offline --no-audit --global-style --install-strategy=shallow --omit=dev --no-package-lock --build-from-source --target_arch=$(NODEJS_CPU)
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/web/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/web/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	ls $(PKG_BUILD_DIR)/web/*
endef

define Package/lightnvr-web/install
	$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(CP) $(PKG_BUILD_DIR)/{LICENSE,README.md} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/web/{node_modules,pages,server,src,static,package.json,.next} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(INSTALL_DIR) $(1)/usr/lib/node_modules
	$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

define Package/lightnvr-web/postrm
#!/bin/sh
rm /usr/lib/node_modules/lightnvr-web || true
rm -rf /usr/lib/node/lightnvr-web || true
endef

$(eval $(call BuildPackage,lightnvr-web))
