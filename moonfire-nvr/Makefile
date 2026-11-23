include $(TOPDIR)/rules.mk

PKG_NAME:=moonfire-nvr
PKG_VERSION:=0.7.33
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/scottlamb/moonfire-nvr/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
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
  DEPENDS:=+sqlite3-cli +zoneinfo-all +zoneinfo-core $(RUST_ARCH_DEPENDS)
  URL:=https://github.com/scottlamb/moonfire-nvr
endef

define Package/moonfire-nvr/description
  Moonfire NVR is an open-source security camera network video recorder, started by Scott Lamb <slamb@slamb.org>.
endef

CARGO_PKG_CONFIG_VARS += RUSTFLAGS="--cfg tokio_unstable" VERSION=$(PKG_VERSION) UI_BUILD_DIR=../ui/dist
RUSTFLAGS +="--cfg tokio_unstable" VERSION=$(PKG_VERSION) UI_BUILD_DIR=../ui/dist

define Build/Compile
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm install
	cd $(PKG_BUILD_DIR)/ui; \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	npm run build
	cd $(PKG_BUILD_DIR)/server; \
	$(CARGO_PKG_CONFIG_VARS) \
	$(CARGO) install -v \
	$(CARGO_PKG_CONFIG_ARGS) \
	--target "$(RUSTUP_TARGET_ARCH)" \
	--root "$(PKG_INSTALL_DIR)" \
	--path "$(PKG_BUILD_DIR)/server/$(MAKE_PATH)" \
	--features=bundled-ui
endef

define Package/moonfire-nvr/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/moonfire-nvr $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/var/lib/moonfire-nvr/ui
	$(CP) $(PKG_BUILD_DIR)/ui/dist/* $(1)/var/lib/moonfire-nvr/ui/
endef

$(eval $(call BuildPackage,moonfire-nvr))
