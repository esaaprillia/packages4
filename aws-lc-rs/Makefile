include $(TOPDIR)/rules.mk

PKG_NAME:=aws-lc-rs
PKG_VERSION:=1.15.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/aws/aws-lc-rs/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=Apache-2.0 OR ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package.mk

define Package/aws-lc-rs
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=AWS Libcrypto for Rust
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp +libopenssl +libopenssl-legacy
  URL:=https://github.com/aws/aws-lc-rs
endef

define Package/aws-lc-rs/description
  aws-lc-rs is a cryptographic library using AWS-LC for its cryptographic operations. The library strives to be API-compatible with the popular Rust library named ring.
endef

CARGO_PKG_VARS= \
	$(CARGO_PKG_CONFIG_VARS) \
	CC=$(TARGET_CC) \
	MAKEFLAGS="$(PKG_JOBS)"

$(eval $(call RustBinPackage,aws-lc-rs))
$(eval $(call BuildPackage,aws-lc-rs))
