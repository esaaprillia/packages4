include $(TOPDIR)/rules.mk

PKG_NAME:=rabbitmq-server
PKG_VERSION:=4.2.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/rabbitmq/rabbitmq-server/releases/download/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE-APACHE2 LICENSE-MPL-RabbitMQ

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=libxslt/host xmlto/host elixir/host rebar3/host socat/host python-simplejson/host

include $(INCLUDE_DIR)/package.mk

define Package/rabbitmq-server
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open source RabbitMQ: core server and tier 1 (built-in) plugins
	DEPENDS:=+libstdcpp +socat +erlang +erlang-asn1 +erlang-compiler +erlang-crypto +erlang-diameter +erlang-eldap +erlang-erl-interface +erlang-ftp +erlang-inets +erlang-mnesia +erlang-odbc +erlang-os-mon +erlang-parsetools +erlang-public-key +erlang-reltool +erlang-runtime-tools +erlang-sasl +erlang-snmp +erlang-ssh +erlang-ssl +erlang-syntax-tools +erlang-tftp +erlang-tools +erlang-xmerl
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
		PROJECT_VERSION="$(PKG_VERSION)" \
		PYTHON="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"
endef

define Package/rabbitmq-server/install
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
	#$(INSTALL_DIR) $(1)/usr/sbin
	#$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,rabbitmq-server))
