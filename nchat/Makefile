include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=5.19.18
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/d99kris/nchat/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=ncurses/host gperf/host golang/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Build/Prepare
	$(call Build/Prepare/Default)
	sed -i 's#CGO_ENABLED=1 go build#CONFIG_GOLANG_MOD_CACHE_WORLD_READABLE="" GO_BUILD_CACHE_DIR="/home/runner/work/mosdns/mosdns/sdk/tmp/go-build" GO_MOD_CACHE_DIR="/home/runner/work/mosdns/mosdns/sdk/dl/go-mod-cache" GO_MOD_ARGS="-modcacherw" PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/lib/go-1.26/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/host/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/host/bin:/snap/bin:/home/runner/.local/bin:/opt/pipx_bin:/home/runner/.cargo/bin:/home/runner/.config/composer/vendor/bin:/usr/local/.ghcup/bin:/home/runner/.dotnet/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin GO_PKG="" GO_INSTALL_EXTRA="" GO_INSTALL_ALL="" GO_SOURCE_ONLY="" GO_BUILD_PKG="/..." GO_EXCLUDES="" GO_GO_GENERATE="" GO_INSTALL_BIN_PATH="/usr/bin" BUILD_DIR="/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18" GO_BUILD_DIR="/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18/.go_work/build" GO_BUILD_BIN_DIR="/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18/.go_work/build/bin/linux_arm64" GO_BUILD_DEPENDS_PATH="/usr/share/gocode" GO_BUILD_DEPENDS_SRC="/home/runner/work/mosdns/mosdns/sdk/staging_dir/target-aarch64_generic_glibc/usr/share/gocode/src" PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/lib/go-1.26/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/host/bin:/home/runner/work/mosdns/mosdns/sdk/staging_dir/host/bin:/snap/bin:/home/runner/.local/bin:/opt/pipx_bin:/home/runner/.cargo/bin:/home/runner/.config/composer/vendor/bin:/usr/local/.ghcup/bin:/home/runner/.dotnet/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin GOOS="linux" GOARCH="arm64" GO386="" GOAMD64="" GOARM="" GOARM64="v8.0" GOMIPS="" GOMIPS64="" GOPPC64="" CGO_ENABLED=1 CC="aarch64-openwrt-linux-gnu-gcc" CXX="aarch64-openwrt-linux-gnu-g++" CGO_CFLAGS="-Os -pipe -mcpu=generic -fno-caller-saves -fno-plt -fhonour-copts -ffile-prefix-map=/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18=nchat-5.19.18 -Wl,-z,max-page-size=4096 -Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro -Wl,-z,pack-relative-relocs" CGO_CPPFLAGS="-I/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/usr/include -I/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/include" CGO_CXXFLAGS="-Os -pipe -mcpu=generic -fno-caller-saves -fno-plt -fhonour-copts -ffile-prefix-map=/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18=nchat-5.19.18 -Wl,-z,max-page-size=4096 -Wformat -Werror=format-security -fstack-protector -D_FORTIFY_SOURCE=1 -Wl,-z,now -Wl,-z,relro -Wl,-z,pack-relative-relocs" CGO_LDFLAGS="-L/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/usr/lib -L/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_glibc/lib -fuse-ld=bfd -zmax-page-size=4096 -znow -zrelro -zpack-relative-relocs" GOPATH="/home/runner/work/mosdns/mosdns/sdk/build_dir/target-aarch64_generic_glibc/nchat-5.19.18/.go_work/build" GOCACHE="/home/runner/work/mosdns/mosdns/sdk/tmp/go-build" GOMODCACHE="/home/runner/work/mosdns/mosdns/sdk/dl/go-mod-cache" GOENV=off GOTOOLCHAIN=local /home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/lib/go-1.26/bin/go build#g' $(PKG_BUILD_DIR)/lib/wmchat/go/CMakeLists.txt
endef

define Package/nchat
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Terminal-based Telegram / WhatsApp client for Linux and macOS
	DEPENDS:=$(GO_ARCH_DEPENDS) +libncurses +libsqlite3 +file +zlib +libreadline +libstdcpp
	URL:=https://github.com/d99kris/nchat
endef

define Package/nchat/description
	nchat is a terminal-based chat client for Linux and macOS with support for Telegram and WhatsApp.
endef

#CGO_CFLAGS := $(filter-out -pipe\ -fno-caller-saves\ -fno-plt\ -fhonour-copts\ -Wformat\ -fstack-protector\,$(TARGET_CFLAGS)) -pipe -fno-caller-saves -fno-plt -fhonour-copts -Wformat -fstack-protector
#CGO_CXXFLAGS := $(filter-out -pipe\ -fno-caller-saves\ -fno-plt\ -fhonour-copts\ -Wformat\ -fstack-protector\,$(TARGET_CXXFLAGS)) -pipe -fno-caller-saves -fno-plt -fhonour-copts -Wformat -fstack-protector

#CGO_CFLAGS := $(filter-out -pipe\ -fno-caller-saves\ -fno-plt\ -fhonour-copts\ -Wformat\ -fstack-protector\,$(CGO_CFLAGS)) -pipe -fno-caller-saves -fno-plt -fhonour-copts -Wformat -fstack-protector
#CGO_CXXFLAGS := $(filter-out -pipe\ -fno-caller-saves\ -fno-plt\ -fhonour-copts\ -Wformat\ -fstack-protector\,$(CGO_CXXFLAGS)) -pipe -fno-caller-saves -fno-plt -fhonour-copts -Wformat -fstack-protector

#GO_PKG_TARGET_VARS := $(filter-out CGO_CFLAGS=%,$(GO_PKG_TARGET_VARS)) CGO_CFLAGS="$(filter-out $(GO_CFLAGS_TO_REMOVE),$(TARGET_CFLAGS))"
#GO_PKG_TARGET_VARS := $(filter-out CGO_CPPFLAGS=%,$(GO_PKG_TARGET_VARS)) CGO_CPPFLAGS="$(TARGET_CPPFLAGS)"
#GO_PKG_TARGET_VARS := $(filter-out CGO_CXXFLAGS=%,$(GO_PKG_TARGET_VARS)) CGO_CXXFLAGS="$(filter-out $(GO_CFLAGS_TO_REMOVE),$(TARGET_CXXFLAGS))"
#GO_PKG_TARGET_VARS := $(filter-out CGO_LDFLAGS=%,$(GO_PKG_TARGET_VARS)) CGO_LDFLAGS="$(TARGET_LDFLAGS)"

CMAKE_OPTIONS += \
	-DHAS_TELEGRAM=OFF

define Package/nchat/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/nchat $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share/nchat
	$(CP) $(PKG_INSTALL_DIR)/usr/share/nchat/* $(1)/usr/share/nchat/
endef

$(eval $(call BuildPackage,nchat))
