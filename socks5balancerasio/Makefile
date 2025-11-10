include $(TOPDIR)/rules.mk

PKG_NAME:=socks5balancerasio
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/Socks5Balancer/Socks5BalancerAsio.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=c37b0423918dc16f8cacad11d0e8797c8b8221ea
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host node-yarn/host node-corepack/host

#PKG_BUILD_DIR:=$(BUILD_DIR)/Socks5BalancerAsio-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/socks5balancerasio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Socks5BalancerAsio
	DEPENDS:=+boost-filesystem +boost-chrono +boost-log +boost-program_options +boost-thread +boost-url +libopenssl +libopenssl-legacy
	URL:=https://github.com/Socks5Balancer/Socks5BalancerAsio
endef

define Package/socks5balancerasio/description
	A Simple TCP Socket Balancer for balance Multi Socks5 Proxy Backend Servers Powered by Boost.Asio
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_DATETIME=OFF \
	-DVERSION="$(PKG_VERSION)" \
	-DUSE_DYNAMIC_BOOST=ON \
	-DOPENSSL_USE_STATIC_LIBS=OFF

define Build/Compile
	( \
		pushd $(PKG_BUILD_DIR)/html ; \
		corepack enable ; \
		yarn install ; \
		yarn version --new-version $(PKG_VERSION) --no-git-tag-version ; \
		yarn run build ; \
		popd ; \
		$(call Build/Compile/Default) ; \
	)
endef

define Build/Install
	mkdir -p "$(PKG_INSTALL_DIR)/etc"
	mkdir -p "$(PKG_INSTALL_DIR)/usr/bin"
	mkdir -p "$(PKG_INSTALL_DIR)/usr/share"
	$(CP) $(PKG_BUILD_DIR)/html/build/html $(PKG_INSTALL_DIR)/usr/share/
	$(CP) $(PKG_BUILD_DIR)/Socks5BalancerAsio $(PKG_INSTALL_DIR)/usr/bin/
	$(CP) $(PKG_BUILD_DIR)/example-config/FullConfig.json $(PKG_INSTALL_DIR)/etc/
endef

define Package/socks5balancerasio/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/FullConfig.json $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/Socks5BalancerAsio $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/html $(1)/usr/share/
endef

$(eval $(call BuildPackage,socks5balancerasio))

