include $(TOPDIR)/rules.mk

PKG_NAME:=aws-c-sdkutils
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/awslabs/aws-c-sdkutils/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-c-sdkutils
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C99 library implementing AWS SDK specific utilities
	DEPENDS:=+aws-c-common
	URL:=https://github.com/awslabs/aws-c-sdkutils
endef

define Package/aws-c-sdkutils/description
	C99 library implementing AWS SDK specific utilities. Includes utilities for ARN parsing, reading AWS profiles, etc...
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-c-sdkutils/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-c-sdkutils))
