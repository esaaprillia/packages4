include $(TOPDIR)/rules.mk

PKG_NAME:=moonfire-nvr
PKG_VERSION:=0.7.32
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/scottlamb/moonfire-nvr/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=example <example@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=rustup/host node/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rustup/rust-values.mk

define Package/moonfire-nvr
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Moonfire NVR, a security camera network video recorder
  DEPENDS:=+sqlite3-cli $(RUST_ARCH_DEPENDS)
  URL:=https://github.com/scottlamb/moonfire-nvr
endef

define Package/moonfire-nvr/description
  Moonfire NVR is an open-source security camera network video recorder, started by Scott Lamb <slamb@slamb.org>.
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

NODEJS_CPU:=$(subst powerpc,ppc,$(subst aarch64,arm64,$(subst x86_64,x64,$(subst i386,ia32,$(ARCH)))))
TMPNPM:=$(shell mktemp -u XXXXXXXXXX)
NPM_CACHE_DIR:=$(if $(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(call qstrip,$(CONFIG_NODEJS_NPM_CACHE_DIR)),$(TMP_DIR))

TARGET_CFLAGS+=$(FPIC)
TARGET_CPPFLAGS+=$(FPIC)

CARGO_PKG_CONFIG_VARS += RUSTFLAGS="--cfg tokio_unstable" VERSION=$(PKG_VERSION) UI_BUILD_DIR=../ui/dist
RUSTFLAGS +="--cfg tokio_unstable" VERSION=$(PKG_VERSION) UI_BUILD_DIR=../ui/dist

define Build/Compile
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm install --prefer-offline --no-audit --global-style --install-strategy=shallow --build-from-source --target_arch=$(NODEJS_CPU)
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm_config_nodedir=$(STAGING_DIR)/usr/ \
	$(if $(CONFIG_NODEJS_NPM_KEEP_CACHE), npm_config_cache=$(NPM_CACHE_DIR)/npm-cache-$(PKG_NPM_NAME),npm_config_cache=$(TMP_DIR)/npm-cache-$(TMPNPM)) \
	npm run build --prefer-offline --no-audit --global-style --install-strategy=shallow --build-from-source --target_arch=$(NODEJS_CPU)
	rm -rf $(TMP_DIR)/npm-cache-$(TMPNPM)
	rm -f $(PKG_BUILD_DIR)/node_modules/.package-lock.json
	find $(PKG_BUILD_DIR)/node_modules -type d -empty -print0 | xargs -0 -r rmdir || true
	ls -l $(PKG_BUILD_DIR)/ui/dist/*
	cd $(PKG_BUILD_DIR)/server && \
	$(CARGO_PKG_CONFIG_VARS) \
	$(CARGO) install -v --features=bundled-ui \
	$(CARGO_PKG_CONFIG_ARGS) \
	--target "$(RUSTUP_TARGET_ARCH)" \
	--root "$(PKG_INSTALL_DIR)" \
	--path "$(PKG_BUILD_DIR)/server/$(MAKE_PATH)"
endef

define Package/moonfire-nvr/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/moonfire-nvr $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/var/lib/moonfire-nvr/ui
	$(CP) $(PKG_BUILD_DIR)/ui/dist/* $(1)/var/lib/moonfire-nvr/ui/
endef

$(eval $(call BuildPackage,moonfire-nvr))
