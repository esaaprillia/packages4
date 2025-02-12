# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Luca Barbato and Donald Hoskins

include $(TOPDIR)/rules.mk

PKG_NAME:=deno
PKG_VERSION:=1.39.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/denoland/deno/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=skip

PKG_MAINTAINER:=Luca Barbato <lu_zero@luminem.org>
PKG_LICENSE:=MIT Unlicense
PKG_LICENSE_FILES:=LICENSE-MIT UNLICENSE

PKG_USE_NINJA:=1
#PKG_BUILD_DIR:=$(BUILD_DIR)/boringtun-$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=rust/host

#RUST_PKG_FEATURES:=boringtun-cli

include $(INCLUDE_DIR)/package.mk
#include $(INCLUDE_DIR)/cmake.mk
include ../../lang/rust/rust-package.mk

define Build/Compile
	$(call Build/Compile/Cargo,cli)
	$(call Build/Compile/Cargo)
endef

define Package/deno
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Userspace WireGuard® Implementation in Rust
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/cloudflare/boringtun
endef

define Package/deno/description
  BoringTun is an implementation of the WireGuard® protocol designed for portability and speed.
endef

$(eval $(call RustBinPackage,deno))
$(eval $(call BuildPackage,deno))
