include $(TOPDIR)/rules.mk

PKG_NAME:=sx1302-hal
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PKG_SOURCE:=sx1302_hal-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Lora-net/sx1302_hal/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE-APACHE2 LICENSE-MPL-RabbitMQ

PKG_BUILD_DIR:=$(BUILD_DIR)/sx1302_hal-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sx1302-hal
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open source RabbitMQ: core server and tier 1 (built-in) plugins
	DEPENDS:=+libstdcpp
	URL:=www.rabbitmq.com/
endef

define Package/sx1302-hal/description
	RabbitMQ is a feature rich, multi-protocol messaging and streaming broker.
endef

MAKE_FLAGS += \
	CROSS_COMPILE="$(TARGET_CROSS)" \
	ARCH="$(ARCH)"

define Package/sx1302-hal/install
	#$(INSTALL_DIR) $(1)/usr/bin
	#$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
	#$(INSTALL_DIR) $(1)/usr/sbin
	#$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,sx1302-hal))
