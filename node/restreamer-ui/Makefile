include $(TOPDIR)/rules.mk

PKG_NPM_NAME:=restreamer-ui
PKG_NAME:=$(PKG_NPM_NAME)
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NPM_NAME)-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://registry.npmjs.org/$(PKG_NPM_NAME)/-/
#PKG_HASH:=e668a26657a9a95ee0d903c6acfaf62995b5a219ac3a673773eded08b4465e5b

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/datarhei/restreamer-ui/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/datarhei/restreamer-ui.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=faecd70766c07b1914024de29350cc030d9cb0f3
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

#PKG_BUILD_DEPENDS:=node/host node-yarn/host
PKG_BUILD_PARALLEL:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk

define Package/restreamer-ui
  SUBMENU:=Node.js
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Restreamer-UI
  URL:=https://datarhei.com/
  #DEPENDS:=+libpthread +libstdcpp +libx11
endef

define Package/restreamer-ui/description
 The user interface of the Restreamer for the connection to the Core application.
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC)
TARGET_CPPFLAGS+=$(FPIC)

define Build/Compile
	rm -rf /home/runner/work/mosdns/mosdns/sdk/.config
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	yarn install
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	PUBLIC_URL="./" yarn run build
	rm -f $(PKG_BUILD_DIR)/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	rm -rf $(PKG_BUILD_DIR)/node_modules/bcrypt/prebuilds
endef

define Package/restreamer-ui/install
	#$(INSTALL_DIR) $(1)/etc/init.d
	#$(INSTALL_BIN) ./files/streamflow.init $(1)/etc/init.d/streamflow
	#$(INSTALL_DIR) $(1)/usr/lib/node/$(PKG_NPM_NAME)
	$(INSTALL_DIR) $(1)/var/lib/restreamer/ui
	#$(CP) $(PKG_BUILD_DIR)/{package.json,*.md,LICENSE,yarn.lock,version.date} \
	#	$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	#$(CP) $(PKG_BUILD_DIR)/{node_modules,public,src,build} \
	#	$(1)/usr/lib/node/$(PKG_NPM_NAME)/
	$(CP) $(PKG_BUILD_DIR)/build/* \
		$(1)/var/lib/restreamer/ui/
	#$(INSTALL_DIR) $(1)/usr/lib/node_modules
	#$(LN) ../node/$(PKG_NPM_NAME) $(1)/usr/lib/node_modules/$(PKG_NPM_NAME)
endef

#define Package/restreamer-ui/postrm
##!/bin/sh
#rm /usr/lib/node_modules/restreamer-ui || true
#rm -rf /usr/lib/node/restreamer-ui || true
#endef

$(eval $(call BuildPackage,restreamer-ui))
