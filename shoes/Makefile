include $(TOPDIR)/rules.mk

PKG_NAME:=shoes
PKG_VERSION:=0.2.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/cfal/shoes/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package.mk

define Package/shoes
  SECTION:=sound
  CATEGORY:=Sound
  TITLE:=shoes is a high-performance multi-protocol proxy server written in Rust.
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libstdcpp
  URL:=https://github.com/cfal/shoes
endef

define Package/shoes/description
  A multi-protocol proxy server written in Rust (HTTP, SOCKS5, Vmess, Vless, Shadowsocks, Trojan, Snell, Hysteria2, TUIC v5, AnyTLS, Naiveproxy, XTLS)
endef

CARGO_PKG_VARS= \
	$(CARGO_PKG_CONFIG_VARS) \
	CC=$(TARGET_CC_NOCACHE) \
	MAKEFLAGS="$(PKG_JOBS)"

$(eval $(call RustBinPackage,shoes))
$(eval $(call BuildPackage,shoes))
