include $(TOPDIR)/rules.mk

PKG_NAME:=aws-c-auth
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/awslabs/aws-c-auth/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-c-auth
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C99 library implementation of AWS client-side authentication: standard credentials providers and signing.
	DEPENDS:=+aws-c-cal +aws-c-common +aws-c-http +aws-c-io +aws-c-sdkutils
	URL:=https://github.com/awslabs/aws-c-auth
endef

define Package/aws-c-auth/description
	C99 library implementation of AWS client-side authentication: standard credentials providers and signing.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-c-auth/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-c-auth))
