include $(TOPDIR)/rules.mk

PKG_NAME:=rabbitmq-server
PKG_VERSION:=4.1.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/rabbitmq/rabbitmq-server/releases/download/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE-APACHE2 LICENSE-MPL-RabbitMQ

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=libxslt/host xmlto/host elixir/host

include $(INCLUDE_DIR)/package.mk

define Package/rabbitmq-server
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open source RabbitMQ: core server and tier 1 (built-in) plugins
	DEPENDS:=+erlang +libstdcpp
	URL:=www.rabbitmq.com/
endef

define Package/rabbitmq-server/description
	RabbitMQ is a feature rich, multi-protocol messaging and streaming broker.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) install install-bin install-man \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		PREFIX=/usr \
		RMQ_ROOTDIR="/usr/lib/rabbitmq" \
		MANDIR=/usr/share/man
endef

define Package/rabbitmq-server/install
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rabbitmq-server))
