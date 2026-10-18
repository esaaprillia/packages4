include $(TOPDIR)/rules.mk

PKG_NAME:=aws-sdk-cpp
PKG_VERSION:=1.11.912
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/aws/aws-sdk-cpp/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=pulseaudio

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/aws-sdk-cpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=AWS SDK for C++
	DEPENDS:=+aws-c-common +aws-c-event-stream +aws-crt-cpp +libcurl +libstdcpp +zlib
	URL:=https://github.com/aws/aws-sdk-cpp
endef

define Package/aws-sdk-cpp/description
	The AWS SDK for C++ provides a modern C++ (version C++ 11 or later) interface for Amazon Web Services (AWS).
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_DEPS=OFF \
	-DCUSTOM_MEMORY_MANAGEMENT=OFF \
	-DAUTORUN_UNIT_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/aws-sdk-cpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,aws-sdk-cpp))
