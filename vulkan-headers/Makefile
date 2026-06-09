include $(TOPDIR)/rules.mk

PKG_NAME:=vulkan-headers
PKG_VERSION:=1.4.350.0
PKG_RELEASE:=1

PKG_SOURCE:=Vulkan-Headers-vulkan-sdk-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/Vulkan-Headers/archive/vulkan-sdk-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DIR:=$(BUILD_DIR)/Vulkan-Headers-vulkan-sdk-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/vulkan-headers
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Vulkan header files and API registry
	DEPENDS:=
	URL:=https://github.com/KhronosGroup/Vulkan-Headers
endef

define Package/vulkan-headers/description
	This repository contains Vulkan header files, include files for C and C++, and related scripts and tests.
endef

CMAKE_OPTIONS += \
	-DVULKAN_HEADERS_ENABLE_TESTS=OFF \
	-DVULKAN_HEADERS_ENABLE_INSTALL=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call BuildPackage,vulkan-headers))
