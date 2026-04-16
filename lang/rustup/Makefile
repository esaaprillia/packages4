# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Luca Barbato and Donald Hoskins

include $(TOPDIR)/rules.mk

PKG_NAME:=rustup
PKG_VERSION:=1.29.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/rust-lang/rustup/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT
PKG_SOURCE:=rustup-$(PKG_VERSION).tar.gz
PKG_MAINTAINER:=Donald Hoskins <grommish@gmail.com>

PKG_HOST_ONLY:=1
PKG_BUILD_FLAGS:=no-mips16

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include rust-values.mk

define Package/rustup
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Rustup
  TITLE:=Rust Programming Language Compiler
  URL:=https://www.rust-lang.org/
  DEPENDS:=$(RUST_ARCH_DEPENDS)
endef

define Package/rustup/description
  Rustup is the toolchain manager for Rust-Lang
endef


# Arguments Used:
# --verbose Verbosity
# -y Disable the Confirmation Prompts
# --profile complete Profile to install [default: default] [possible values: minimal, default, complete]
# --no-modify-path Don't configure the PATH environment variable
# --default-host <default-host> Choose a default host triple
# --default-toolchain <default-toolchain> Choose a default toolchain to install. Use 'none' to not install any toolchains at all
RUSTUP_ARGS = \
	--verbose \
	-y \
	--profile complete \
	--no-modify-path \
	--default-host $(RUSTUP_HOST_ARCH) \
	--default-toolchain nightly

define Host/Uninstall
	$(RM) -r $(CARGO_HOME)
	$(RM) -r $(RUSTUP_HOME)

	$(RM) $(STAGING_DIR_HOST)/bin/cargo
	$(RM) $(STAGING_DIR_HOST)/bin/cargo-clippy
	$(RM) $(STAGING_DIR_HOST)/bin/cargo-fmt
	$(RM) $(STAGING_DIR_HOST)/bin/cargo-miri
	$(RM) $(STAGING_DIR_HOST)/bin/clippy-driver
	$(RM) $(STAGING_DIR_HOST)/bin/cross
	$(RM) $(STAGING_DIR_HOST)/bin/cross-util
	$(RM) $(STAGING_DIR_HOST)/bin/rls
	$(RM) $(STAGING_DIR_HOST)/bin/rust-analyzer
	$(RM) $(STAGING_DIR_HOST)/bin/rust-gdb
	$(RM) $(STAGING_DIR_HOST)/bin/rust-gdbgui
	$(RM) $(STAGING_DIR_HOST)/bin/rust-lldb
	$(RM) $(STAGING_DIR_HOST)/bin/rustc
	$(RM) $(STAGING_DIR_HOST)/bin/rustdoc
	$(RM) $(STAGING_DIR_HOST)/bin/rustfmt
	$(RM) $(STAGING_DIR_HOST)/bin/rustup
endef

define Host/Compile
	CARGO_HOME=$(CARGO_HOME) \
	RUSTUP_HOME=$(RUSTUP_HOME) \
	$(BASH) $(HOST_BUILD_DIR)/rustup-init.sh $(RUSTUP_ARGS)
endef

define Host/Install
	ln -s $(CARGO_HOME)/bin/cargo $(STAGING_DIR_HOST)/bin/cargo
	ln -s $(CARGO_HOME)/bin/cargo-clippy $(STAGING_DIR_HOST)/bin/cargo-clippy
	ln -s $(CARGO_HOME)/bin/cargo-fmt $(STAGING_DIR_HOST)/bin/cargo-fmt
	ln -s $(CARGO_HOME)/bin/cargo-miri $(STAGING_DIR_HOST)/bin/cargo-miri
	ln -s $(CARGO_HOME)/bin/clippy-driver $(STAGING_DIR_HOST)/bin/clippy-driver
	ln -s $(CARGO_HOME)/bin/cross $(STAGING_DIR_HOST)/bin/cross
	ln -s $(CARGO_HOME)/bin/cross-util $(STAGING_DIR_HOST)/bin/cross-util
	ln -s $(CARGO_HOME)/bin/rls $(STAGING_DIR_HOST)/bin/rls
	ln -s $(CARGO_HOME)/bin/rust-analyzer $(STAGING_DIR_HOST)/bin/rust-analyzer
	ln -s $(CARGO_HOME)/bin/rust-gdb $(STAGING_DIR_HOST)/bin/rust-gdb
	ln -s $(CARGO_HOME)/bin/rust-gdbgui $(STAGING_DIR_HOST)/bin/rust-gdbgui
	ln -s $(CARGO_HOME)/bin/rust-lldb $(STAGING_DIR_HOST)/bin/rust-lldb
	ln -s $(CARGO_HOME)/bin/rustc $(STAGING_DIR_HOST)/bin/rustc
	ln -s $(CARGO_HOME)/bin/rustdoc $(STAGING_DIR_HOST)/bin/rustdoc
	ln -s $(CARGO_HOME)/bin/rustfmt $(STAGING_DIR_HOST)/bin/rustfmt
	ln -s $(CARGO_HOME)/bin/rustup $(STAGING_DIR_HOST)/bin/rustup

	CARGO_HOME=$(CARGO_HOME) \
	RUSTUP_HOME=$(RUSTUP_HOME) \
	cargo install cross
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,rustup))
