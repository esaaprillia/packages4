include $(TOPDIR)/rules.mk

PKG_NAME:=moonfire-nvr
PKG_VERSION:=0.7.31
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/scottlamb/moonfire-nvr/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=example <example@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=rustup/host node/host node-pnpm/host
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

CARGO_PKG_CONFIG_VARS += RUSTFLAGS="--cfg tokio_unstable" VERSION=$(PKG_VERSION)
RUSTFLAGS +="--cfg tokio_unstable" VERSION=$(PKG_VERSION)

define Build/Compile
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	pnpm i --frozen-lockfile
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	pnpm run build
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
endef

$(eval $(call BuildPackage,moonfire-nvr))
