include $(TOPDIR)/rules.mk

PKG_NAME:=mumble-web-proxy
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://codeload.github.com/ihciah/shadow-tls/tar.gz/v$(PKG_VERSION)?
#PKG_HASH:=1d1d436734823ba0302de6e91883ed892ea710769c722a139990194ff5837224

PKG_SOURCE_URL:=https://github.com/Johni0702/mumble-web-proxy.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=21bd9dc06509b045722b1e4edc14115c739d3f24
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=example <example@gmail.com>
PKG_LICENSE:=AGPL
PKG_LICENSE_FILES:=agpl-3.0.txt

PKG_BUILD_DEPENDS:=rustup/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rustup/rust-values.mk

define Package/mumble-web-proxy
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Mumble to WebSocket+WebRTC proxy for use with mumble-web
  DEPENDS:=+libnice +libopenssl $(RUST_ARCH_DEPENDS)
  URL:=https://github.com/Johni0702/mumble-web-proxy
endef

define Package/mumble-web-proxy/description
  mumble-web-proxy is a Mumble to WebSocket+WebRTC proxy.
endef

define Build/Compile
  cd $(PKG_BUILD_DIR) && \
  $(CARGO_PKG_CONFIG_VARS) \
  $(CARGO) install -v \
  $(CARGO_PKG_CONFIG_ARGS) \
  --target "$(RUSTUP_TARGET_ARCH)" \
  --root "$(PKG_INSTALL_DIR)" \
  --path "$(PKG_BUILD_DIR)/$(MAKE_PATH)"
endef

define Package/mumble-web-proxy/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/mumble-web-proxy $(1)/usr/bin/
endef

$(eval $(call BuildPackage,mumble-web-proxy))
