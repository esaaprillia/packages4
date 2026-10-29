include $(TOPDIR)/rules.mk

PKG_NAME:=gurk-rs
PKG_VERSION:=0.10.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/boxdot/gurk-rs/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=example <example@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE-AGPL-3.0

PKG_BUILD_DEPENDS:=rust/host protobuf/host perl/host protobuf
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package.mk

define Package/gurk-rs
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Signal Messenger client for terminal
  DEPENDS:=+libstdcpp $(RUST_ARCH_DEPENDS)
  URL:=https://github.com/boxdot/gurk-rs
endef

define Package/gurk-rs/description
  Signal Messenger client for terminal
endef

CARGO_PKG_VARS += \
	PERL="$(STAGING_DIR_HOSTPKG)/usr/bin/perl" \
	PROTOC="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	BINDGEN_EXTRA_CLANG_ARGS="-I$(STAGING_DIR)/usr/include --sysroot=$(TOOLCHAIN_ROOT_DIR)"

define Package/gurk-rs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/target/$(RUSTC_TARGET_ARCH)/release/gurk* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,gurk-rs))
