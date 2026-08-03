include $(TOPDIR)/rules.mk

PKG_NAME:=bpf-linker
PKG_VERSION:=0.10.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/aya-rs/bpf-linker/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

HOST_BUILD_DEPENDS:=rust/host
HOST_BUILD_PARALLEL:=1
PKG_HOST_ONLY:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-host-build.mk

define Package/bpf-linker
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Rust
  TITLE:=Simple BPF static linker
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/aya-rs/bpf-linker
  BUILDONLY:=1
endef

define Package/bpf-linker/description
  bpf-linker aims to simplify building modern BPF programs while still supporting older, more restrictive kernels.
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR)/host/bin
	$(INSTALL_BIN) $(HOST_INSTALL_DIR)/bin/bpf-linker $(STAGING_DIR)/host/bin/
endef

$(eval $(call RustBinHostBuild))
$(eval $(call HostBuild))
$(eval $(call BuildPackage,bpf-linker))
