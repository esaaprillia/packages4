# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 Luca Barbato and Donald Hoskins

# Clear environment variables which should be handled internally,
# as users might configure their own env on the host

# Rust Environmental Vars
RUSTUP_HOST_SUFFIX := $(word 4, $(subst -, ,$(GNU_HOST_NAME)))
RUSTUP_HOST_ARCH := $(HOST_ARCH)-unknown-linux-$(RUSTUP_HOST_SUFFIX)
CARGO_HOME := $(STAGING_DIR_HOST)/.cargo/
RUSTUP_HOME := $(STAGING_DIR_HOST)/.rustup/
CARGO := $(CARGO_HOME)/bin/cargo

ifeq ($(CONFIG_USE_MUSL),y)
  # Force linking of the SSP library for musl
  ifdef CONFIG_PKG_CC_STACKPROTECTOR_REGULAR
    ifeq ($(strip $(PKG_SSP)),1)
      RUSTUP_LDFLAGS+=-lssp_nonshared
    endif
  endif
  ifdef CONFIG_PKG_CC_STACKPROTECTOR_STRONG
    ifeq ($(strip $(PKG_SSP)),1)
      RUSTUP_LDFLAGS+=-lssp_nonshared
    endif
  endif
endif

CARGO_RUSTFLAGS+=-Ctarget-feature=-crt-static $(RUSTUP_LDFLAGS)

ifeq ($(HOST_OS),Darwin)
  ifeq ($(HOST_ARCH),arm64)
    RUSTUP_HOST_ARCH:=aarch64-apple-darwin
  endif
endif

# mips64 openwrt has a specific targed in RUSTUP
ifeq ($(ARCH),mips64)
  RUSTUP_TARGET_ARCH:=$(REAL_GNU_TARGET_NAME)
else
  RUSTUP_TARGET_ARCH:=$(subst openwrt,unknown,$(REAL_GNU_TARGET_NAME))
endif

RUSTUP_TARGET_ARCH:=$(subst muslgnueabi,musleabi,$(RUSTUP_TARGET_ARCH))

ifeq ($(ARCH),i386)
  RUSTUP_TARGET_ARCH:=$(subst i486,i586,$(RUSTUP_TARGET_ARCH))
else ifeq ($(ARCH),riscv64)
  RUSTUP_TARGET_ARCH:=$(subst riscv64,riscv64gc,$(RUSTUP_TARGET_ARCH))
endif

# ARM Logic
ifeq ($(ARCH),arm)
  ifeq ($(CONFIG_arm_v7),y)
    RUSTUP_TARGET_ARCH:=$(subst arm,armv7,$(RUSTUP_TARGET_ARCH))
  endif

  ifeq ($(CONFIG_HAS_FPU),y)
    RUSTUP_TARGET_ARCH:=$(subst musleabi,musleabihf,$(RUSTUP_TARGET_ARCH))
    RUSTUP_TARGET_ARCH:=$(subst gnueabi,gnueabihf,$(RUSTUP_TARGET_ARCH))
  endif
endif

ifeq ($(ARCH),aarch64)
    RUSTUP_CFLAGS:=-mno-outline-atomics
endif

# Support only a subset for now.
RUST_ARCH_DEPENDS:=@(aarch64||arm||i386||i686||mips||mipsel||mips64||mips64el||mipsel||powerpc64||riscv64||x86_64)

CARGO_PKG_CONFIG_VARS = \
	CARGO_BUILD_TARGET=$(RUSTUP_TARGET_ARCH) \
	CARGO_HOME=$(CARGO_HOME) \
	CARGO_TARGET_$(subst -,_,$(call toupper,$(RUSTUP_TARGET_ARCH)))_LINKER=$(TARGET_CC_NOCACHE) \
	PROFILE=$(if $(CONFIG_DEBUG),debug,release) \
	RUSTFLAGS="$(CARGO_RUSTFLAGS)" \
	RUSTUP_HOME=$(RUSTUP_HOME) \
	TARGET_CC=$(TARGET_CC_NOCACHE) \
	TARGET_CFLAGS="$(TARGET_CFLAGS) $(RUSTUP_CFLAGS)"
