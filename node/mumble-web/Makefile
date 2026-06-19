include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=mumble-web
PKG_NAME:=node-$(PKG_NPM_NAME)
PKG_VERSION:=0.5.1
PKG_RELEASE:=2

#PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/Johni0702/mumble-web.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=4ef594c8a097d180700d22d91e9a7fea3bab08ac
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=

PKG_BUILD_DEPENDS:=node/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/node-mumble-web
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An HTML5 Mumble client
  URL:=https://www.npmjs.com/package/mumble-web
  DEPENDS:=+libpthread +libc +libstdcpp
endef

define Package/node-mumble-web/description
 mumble-web is an HTML5 Mumble client for use in modern browsers.
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
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
endef

define Package/node-mumble-web/install
	$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(CP) $(PKG_BUILD_DIR)/{README.md,webpack.config.js,package.json} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/{node_modules,dist,app,loc,themes} \
		$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(INSTALL_DIR) $(1)/usr/lib/node_modules
	$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

define Package/node-mumble-web/postrm
#!/bin/sh
rm /usr/lib/node_modules/mumble-web || true
rm -rf /usr/lib/node/mumble-web || true
endef

$(eval $(call BuildPackage,node-mumble-web))
