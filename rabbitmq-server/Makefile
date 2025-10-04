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
PKG_BUILD_DEPENDS:=libxslt/host xmlto/host

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

CONFIGURE_ARGS += \
	--prefix=/usr \
	--docdir=/usr/share/doc/hdf5/ \
	--with-examplesdir=/usr/share/doc/hdf5/examples/ \
	--with-default-plugindir=/usr/lib/hdf5/lib/plugin/ \
	--disable-static \
	--disable-sharedlib-rpath \
	--enable-build-mode=production \
	--enable-hl \
	--enable-cxx \
	--disable-fortran \
	--disable-java \
	--with-pic \
	--with-zlib \
	--with-szlib

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Package/rabbitmq-server/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rabbitmq-server))
