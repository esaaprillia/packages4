include $(TOPDIR)/rules.mk

PKG_NAME:=rabbitmq-c
PKG_VERSION:=0.17.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/alanxz/rabbitmq-c/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=xmlto/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/rabbitmq-c
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=RabbitMQ C client
	DEPENDS:=+libstdcpp +libpopt +libopenssl
	URL:=https://github.com/alanxz/rabbitmq-c
endef

define Package/rabbitmq-c/description
	RabbitMQ C AMQP client library
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/librabbitmq.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/librabbitmq.pc
endef

CMAKE_OPTIONS += \
	-DBUILD_STATIC_LIBS=ON \
	-DBUILD_SHARED_LIBS=ON \
	-DENABLE_SSL_SUPPORT=ON \
	-DBUILD_TOOLS=ON \
	-DBUILD_TOOLS_DOCS=OFF

define Package/rabbitmq-c/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rabbitmq-c))
