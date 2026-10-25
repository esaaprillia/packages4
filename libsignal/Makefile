include $(TOPDIR)/rules.mk

PKG_NAME:=libsignal
PKG_VERSION:=0.106.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/signalapp/libsignal/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=example <example@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rustup/host protobuf/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rustup/rust-values.mk

define Package/libsignal
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Home to the Signal Protocol as well as other cryptographic primitives which make Signal possible.
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/signalapp/libsignal
endef

define Package/libsignal/description
  libsignal contains platform-agnostic APIs used by the official Signal clients and servers, exposed as a Java, Swift, or TypeScript library. The underlying implementations are written in Rust
endef

CARGO_PKG_CONFIG_VARS += RUSTUP_TOOLCHAIN=stable

define Build/Compile
	cd $(PKG_BUILD_DIR) && \
	$(CARGO_PKG_CONFIG_VARS) \
	$(CARGO) build -p libsignal-ffi --profile=release \
	$(CARGO_PKG_CONFIG_ARGS) \
	--target "$(RUSTUP_TARGET_ARCH)" \
	--root "$(PKG_INSTALL_DIR)" \
	--path "$(PKG_BUILD_DIR)/$(MAKE_PATH)"
endef

define Package/libsignal/install
	$(INSTALL_DIR) $(1)/usr/bin
	ls -l $(PKG_INSTALL_DIR)/*
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/bin/moonfire-nvr $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libsignal))
