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
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-golang.mk
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
	CMAKE_SYSTEM_NAME=Linux \
	CMAKE_SYSTEM_VERSION=1 \
	CMAKE_SYSTEM_PROCESSOR=$(ARCH) \
	CMAKE_BUILD_TYPE=$(if $(CONFIG_DEBUG),Debug,Release) \
	CMAKE_C_FLAGS_RELEASE="-DNDEBUG" \
	CMAKE_CXX_FLAGS_RELEASE="-DNDEBUG" \
	CMAKE_C_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
	CMAKE_C_COMPILER="$(CMAKE_C_COMPILER)" \
	CMAKE_CXX_COMPILER_LAUNCHER="$(CMAKE_CXX_COMPILER_LAUNCHER)" \
	CMAKE_CXX_COMPILER="$(CMAKE_CXX_COMPILER)" \
	CMAKE_ASM_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
	CMAKE_ASM_COMPILER="$(CMAKE_C_COMPILER)" \
	CMAKE_EXE_LINKER_FLAGS="$(TARGET_LDFLAGS)" \
	CMAKE_MODULE_LINKER_FLAGS="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
	CMAKE_SHARED_LINKER_FLAGS="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
	CMAKE_AR="$(CMAKE_AR)" \
	CMAKE_NM="$(CMAKE_NM)" \
	CMAKE_RANLIB="$(CMAKE_RANLIB)" \
	CMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH)" \
	CMAKE_FIND_ROOT_PATH_MODE_PROGRAM=BOTH \
	CMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
	CMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
	CMAKE_STRIP=: \
	CMAKE_INSTALL_PREFIX=/usr \
	DL_LIBRARY=$(STAGING_DIR) \
	CMAKE_PREFIX_PATH=$(STAGING_DIR) \
	CMAKE_SKIP_RPATH=TRUE  \
	CMAKE_EXPORT_PACKAGE_REGISTRY=FALSE \
	CMAKE_EXPORT_NO_PACKAGE_REGISTRY=TRUE \
	CMAKE_FIND_USE_PACKAGE_REGISTRY=FALSE \
	CMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY=TRUE \
	CMAKE_FIND_USE_SYSTEM_PACKAGE_REGISTRY=FALSE \
	CMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY=TRUE \
	cargo build -p libsignal-ffi -v \
		--profile $(CARGO_PKG_PROFILE) \
		$(if $(strip $(RUST_PKG_FEATURES)),--features "$(strip $(RUST_PKG_FEATURES))") \
		--manifest-path "$(PKG_BUILD_DIR)/$(if $(strip $(1)),$(strip $(1)),$(strip $(MAKE_PATH)))/Cargo.toml" \
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
