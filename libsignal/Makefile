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

PKG_BUILD_DEPENDS:=rust/host protobuf/host protobuf
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-package.mk

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

define Build/Compile/Cargo
	+$(CARGO_PKG_VARS) \
	cargo build -p libsignal-ffi -v \
		--profile $(CARGO_PKG_PROFILE) \
		$(if $(strip $(RUST_PKG_FEATURES)),--features "$(strip $(RUST_PKG_FEATURES))") \
		--path "$(PKG_BUILD_DIR)/$(if $(strip $(1)),$(strip $(1)),$(strip $(MAKE_PATH)))" \
		$(if $(filter --jobserver%,$(PKG_JOBS)),,-j1) \
		$(CARGO_PKG_ARGS) \
		$(2)
endef

CARGO_PKG_VARS += PROTOC=$(STAGING_DIR_HOSTPKG)/bin/protoc

define Build/InstallDev
	#$(INSTALL_DIR) $(1)/usr/include 
	#$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	#$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/target/$(RUST_TARGET)/release/libsignal_ffi.a $(1)/usr/lib/
	#$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	#$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/imagequant.pc $(1)/usr/lib/pkgconfig/
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/imagequant.pc
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/imagequant.pc
endef

define Package/libsignal/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/target/$(RUST_TARGET)/release/libsignal_ffi.a $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libsignal))
