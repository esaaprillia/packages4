include $(TOPDIR)/rules.mk

PKG_NAME:=aws-c-s3
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/awslabs/aws-c-s3/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-c-s3
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The AWS-C-S3 library is an asynchronous AWS S3 client focused on maximizing throughput and network utilization.
	DEPENDS:=+aws-c-auth +aws-c-cal +aws-c-common +aws-c-http +aws-c-io +aws-checksums
	URL:=https://github.com/awslabs/aws-c-s3
endef

define Package/aws-c-s3/description
	C99 library implementation for communicating with the S3 service, designed for maximizing throughput on high bandwidth EC2 instances.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCMAKE_PREFIX_PATH="$(STAGING_DIR)/usr" \
	-DBUILD_TESTING=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-c-s3/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-c-s3))
