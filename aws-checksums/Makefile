include $(TOPDIR)/rules.mk

PKG_NAME:=aws-checksums
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/awslabs/aws-checksums/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-checksums
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cross-Platform HW accelerated CRC32c and CRC32 with fallback to efficient SW implementations
	DEPENDS:=+aws-c-common
	URL:=https://github.com/awslabs/aws-checksums
endef

define Package/aws-checksums/description
	Cross-Platform HW accelerated CRC32c and CRC32 with fallback to efficient SW implementations. C interface with language bindings for each of our SDKs
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCMAKE_PREFIX_PATH="$(STAGING_DIR)/usr" \
	-DBUILD_TESTING=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-checksums/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-checksums))
