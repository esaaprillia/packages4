include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=5.19.18
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/d99kris/nchat/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT AGPL-3.0 GPL-3.0
PKG_LICENSE_FILES:=LICENSE LICENSE.AGPL-3.0 LICENSE.GPL-3.0

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=ncurses/host gperf/host golang/host td/host rust/host protobuf/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-values.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/mtproto
	$(CP) $(DL_DIR)/td/generate/auto/td/mtproto/{mtproto_api.cpp,mtproto_api.h,mtproto_api.hpp} $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/mtproto/
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/telegram
	$(CP) $(DL_DIR)/td/generate/auto/td/telegram/{telegram_api_0.cpp,telegram_api_1.cpp,telegram_api_2.cpp,telegram_api_3.cpp,telegram_api_4.cpp,telegram_api_5.cpp,telegram_api_6.cpp,telegram_api_7.cpp,telegram_api_8.cpp,telegram_api_9.cpp,telegram_api.h,telegram_api.hpp,secret_api.cpp,secret_api.h,secret_api.hpp,e2e_api.cpp,e2e_api.h,e2e_api.hpp,td_api_0.cpp,td_api_1.cpp,td_api_2.cpp,td_api_3.cpp,td_api_4.cpp,td_api_5.cpp,td_api_6.cpp,td_api_7.cpp,td_api_8.cpp,td_api_9.cpp,td_api.h,td_api.hpp,td_api_json_0.cpp,td_api_json_1.cpp,td_api_json_2.cpp,td_api_json_3.cpp,td_api_json_4.cpp,td_api_json_5.cpp,td_api_json_6.cpp,td_api_json_7.cpp,td_api_json_8.cpp,td_api_json_9.cpp,td_api_json.h} $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/telegram/
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/generate/auto/td/mtproto
	$(CP) $(DL_DIR)/td/generate/auto/td/mtproto/{mtproto_api.cpp,mtproto_api.h,mtproto_api.hpp} $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/generate/auto/td/mtproto/
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/generate/auto/td/telegram
	$(CP) $(DL_DIR)/td/generate/auto/td/telegram/{telegram_api_0.cpp,telegram_api_1.cpp,telegram_api_2.cpp,telegram_api_3.cpp,telegram_api_4.cpp,telegram_api_5.cpp,telegram_api_6.cpp,telegram_api_7.cpp,telegram_api_8.cpp,telegram_api_9.cpp,telegram_api.h,telegram_api.hpp,secret_api.cpp,secret_api.h,secret_api.hpp,e2e_api.cpp,e2e_api.h,e2e_api.hpp,td_api_0.cpp,td_api_1.cpp,td_api_2.cpp,td_api_3.cpp,td_api_4.cpp,td_api_5.cpp,td_api_6.cpp,td_api_7.cpp,td_api_8.cpp,td_api_9.cpp,td_api.h,td_api.hpp,td_api_json_0.cpp,td_api_json_1.cpp,td_api_json_2.cpp,td_api_json_3.cpp,td_api_json_4.cpp,td_api_json_5.cpp,td_api_json_6.cpp,td_api_json_7.cpp,td_api_json_8.cpp,td_api_json_9.cpp,td_api_json.h} $(PKG_BUILD_DIR)/lib/tgchat/ext/td/td/generate/auto/td/telegram/
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/lib/tgchat/ext/td/tdutils/generate/auto
	$(CP) $(DL_DIR)/tdutils/generate/auto/{extension_to_mime_type.cpp,mime_type_to_extension.cpp,mime_type_to_extension.cpp} $(PKG_BUILD_DIR)/lib/tgchat/ext/td/tdutils/generate/auto/
	sed -i 's#target/release/libsignal_ffi.a#target/$(RUSTC_TARGET_ARCH)/release/libsignal_ffi.a#g' $(PKG_BUILD_DIR)/lib/sgchat/go/build-libsignal.sh
	sed -i 's#cargo build#$(CARGO_PKG_CONFIG_VARS) CC=$(HOSTCC_NOCACHE) $(CONFIGURE_VARS) PROTOC="$(STAGING_DIR_HOSTPKG)/bin/protoc" BINDGEN_EXTRA_CLANG_ARGS="-I$(STAGING_DIR)/usr/include --sysroot=$(TOOLCHAIN_ROOT_DIR)" $(STAGING_DIR)/host/bin/cargo build#g' $(PKG_BUILD_DIR)/lib/sgchat/go/build-libsignal.sh
	sed -i 's#go build#$(GO_GENERAL_BUILD_CONFIG_VARS) $(GO_PKG_BUILD_CONFIG_VARS) GOOS="$(GO_OS)" GOARCH="$(GO_ARCH)" GO386="$(GO_386)" GOAMD64="$(GO_AMD64)" GOARM="$(GO_ARM)" GOARM64="$(GO_ARM64)" GOMIPS="$(GO_MIPS)" GOMIPS64="$(GO_MIPS64)" GOPPC64="$(GO_PPC64)" CGO_ENABLED=1 CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" $(STAGING_DIR_HOSTPKG)/lib/go-$(GO_HOST_VERSION)/bin/go build#g' $(PKG_BUILD_DIR)/lib/gostat/assemble.sh
	sed -i 's#go build#$(GO_GENERAL_BUILD_CONFIG_VARS) $(GO_PKG_BUILD_CONFIG_VARS) GOOS="$(GO_OS)" GOARCH="$(GO_ARCH)" GO386="$(GO_386)" GOAMD64="$(GO_AMD64)" GOARM="$(GO_ARM)" GOARM64="$(GO_ARM64)" GOMIPS="$(GO_MIPS)" GOMIPS64="$(GO_MIPS64)" GOPPC64="$(GO_PPC64)" CGO_ENABLED=1 CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" $(STAGING_DIR_HOSTPKG)/lib/go-$(GO_HOST_VERSION)/bin/go build#g' $(PKG_BUILD_DIR)/lib/wmchat/go/CMakeLists.txt
	sed -i 's#go build#$(GO_GENERAL_BUILD_CONFIG_VARS) $(GO_PKG_BUILD_CONFIG_VARS) GOOS="$(GO_OS)" GOARCH="$(GO_ARCH)" GO386="$(GO_386)" GOAMD64="$(GO_AMD64)" GOARM="$(GO_ARM)" GOARM64="$(GO_ARM64)" GOMIPS="$(GO_MIPS)" GOMIPS64="$(GO_MIPS64)" GOPPC64="$(GO_PPC64)" CGO_ENABLED=1 CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" $(STAGING_DIR_HOSTPKG)/lib/go-$(GO_HOST_VERSION)/bin/go build#g' $(PKG_BUILD_DIR)/lib/sgchat/go/CMakeLists.txt
endef

define Package/nchat
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Terminal-based Telegram / WhatsApp client for Linux and macOS
	DEPENDS:=$(GO_ARCH_DEPENDS) +libncurses +libopenssl +libopenssl-legacy +libsqlite3 +file +zlib +libreadline +libstdcpp +libpng
	URL:=https://github.com/d99kris/nchat
endef

define Package/nchat/description
	nchat is a terminal-based chat client for Linux and macOS with support for Telegram and WhatsApp.
endef

CMAKE_OPTIONS += \
	-DHAS_TELEGRAM=ON \
	-DHAS_SIGNAL=ON

define Package/nchat/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/nchat $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,nchat))
