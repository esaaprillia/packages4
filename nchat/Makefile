include $(TOPDIR)/rules.mk

PKG_NAME:=nchat
PKG_VERSION:=5.10.15
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
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-golang.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

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

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_BUILD_DIR)/build/lib/wmchat/go
	$(CP) ./files/* $(PKG_BUILD_DIR)/build/lib/wmchat/go/
endef

CMAKE_OPTIONS += \
	-DHAS_TELEGRAM=OFF

define Package/nchat/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/nchat \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/nchat \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,nchat))
