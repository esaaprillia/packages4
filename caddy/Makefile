include $(TOPDIR)/rules.mk

PKG_NAME:=caddy
PKG_VERSION:=2.11.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/caddyserver/caddy/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
PKG_BUILD_FLAGS:=no-mips16

GO_PKG:=github.com/caddyserver/caddy
GO_PKG_BUILD_PKG:=$(GO_PKG)./cmd/caddy
GO_PKG_LDFLAGS_X:= \
	$(GO_PKG)/v2.CustomVersion=v$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/caddy
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Caddy is an extensible server platform that uses TLS by default.
  DEPENDS:=+ca-certificates $(GO_ARCH_DEPENDS)
  URL:=https://caddyserver.com/
endef

define Package/caddy/description
  Fast and extensible multi-platform HTTP/1-2-3 web server with automatic HTTPS
endef

define Package/caddy/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,caddy))
