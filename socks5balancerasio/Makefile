include $(TOPDIR)/rules.mk

PKG_NAME:=socks5balancerasio
PKG_VERSION:=1.3.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Socks5Balancer/Socks5BalancerAsio/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/Socks5BalancerAsio-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/socks5balancerasio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Socks5BalancerAsio
	DEPENDS:=+boost-libs +libopenssl
	URL:=https://github.com/Socks5Balancer/Socks5BalancerAsio
endef

define Package/socks5balancerasio/description
	A Simple TCP Socket Balancer for balance Multi Socks5 Proxy Backend Servers Powered by Boost.Asio
endef

CMAKE_OPTIONS += \
	-Wno-dev

define Package/socks5balancerasio/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,socks5balancerasio))
