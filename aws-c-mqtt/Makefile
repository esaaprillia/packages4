include $(TOPDIR)/rules.mk

PKG_NAME:=aws-c-mqtt
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/awslabs/aws-c-mqtt/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-c-mqtt
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C99 implementation of the MQTT 3.1.1 and MQTT 5 specifications.
	DEPENDS:=+aws-c-common +aws-c-http +aws-c-io
	URL:=https://github.com/awslabs/aws-c-mqtt
endef

define Package/aws-c-mqtt/description
	C99 implementation of the MQTT 3.1.1 and MQTT 5 specifications.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-c-mqtt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-c-mqtt))
