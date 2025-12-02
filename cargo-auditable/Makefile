include $(TOPDIR)/rules.mk

PKG_NAME:=cargo-auditable
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/rust-secure-code/cargo-auditable/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

HOST_BUILD_DEPENDS:=rust/host
HOST_BUILD_PARALLEL:=1
PKG_HOST_ONLY:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-host-build.mk

define Package/cargo-auditable
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Rust
  TITLE:=Make production Rust binaries auditable
  DEPENDS:=$(RUST_ARCH_DEPENDS)
  URL:=https://github.com/rust-secure-code/cargo-auditable
  BUILDONLY:=1
endef

define Package/cargo-auditable/description
  Know the exact crate versions used to build your Rust executable.
endef

$(eval $(call RustBinHostBuild))
$(eval $(call HostBuild))
$(eval $(call BuildPackage,cargo-auditable))
