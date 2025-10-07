include $(TOPDIR)/rules.mk

PKG_NAME:=simple-amqp-client
PKG_VERSION:=2.5.1
PKG_RELEASE:=1

PKG_SOURCE:=SimpleAmqpClient-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/alanxz/SimpleAmqpClient/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE-MIT

PKG_BUILD_DIR:=$(BUILD_DIR)/SimpleAmqpClient-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/simple-amqp-client
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple C++ Interface to rabbitmq-c
	DEPENDS:=+libstdcpp +rabbitmq-c +boost-chrono
	URL:=https://github.com/alanxz/SimpleAmqpClient
endef

define Package/simple-amqp-client/description
	SimpleAmqpClient is an easy-to-use C++ wrapper around the rabbitmq-c C library. It derives inspiration from the puka AMQP library in that it abstracts away the underlying AMQP wire concept of channels and uses them as an error/consumer scope. This should make writing simple single-threaded AMQP-enabled apps easy.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libSimpleAmqpClient.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libSimpleAmqpClient.pc
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DENABLE_TESTING=OFF

define Package/simple-amqp-client/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,simple-amqp-client))
