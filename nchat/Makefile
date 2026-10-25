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
	sed -i 's#CGO_ENABLED=1 go build#$(GO_GENERAL_BUILD_CONFIG_VARS) $(GO_PKG_BUILD_CONFIG_VARS) GOOS="$(GO_OS)" GOARCH="$(GO_ARCH)" GO386="$(GO_386)" GOAMD64="$(GO_AMD64)" GOARM="$(GO_ARM)" GOARM64="$(GO_ARM64)" GOMIPS="$(GO_MIPS)" GOMIPS64="$(GO_MIPS64)" GOPPC64="$(GO_PPC64)" CGO_ENABLED=1 CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" $(STAGING_DIR_HOSTPKG)/lib/go-$(GO_HOST_VERSION)/bin/go build#g' $(PKG_BUILD_DIR)/lib/wmchat/go/CMakeLists.txt
endef

define Package/nchat
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Terminal-based Telegram / WhatsApp client for Linux and macOS
	DEPENDS:=$(GO_ARCH_DEPENDS) +libncurses +libsqlite3 +file +zlib +libreadline +libstdcpp +libpng
	URL:=https://github.com/d99kris/nchat
endef

define Package/nchat/description
	nchat is a terminal-based chat client for Linux and macOS with support for Telegram and WhatsApp.
endef

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
