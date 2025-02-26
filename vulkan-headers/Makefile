include $(TOPDIR)/rules.mk

PKG_NAME:=vulkan-headers
PKG_VERSION:=1.4.309
PKG_RELEASE:=1

PKG_SOURCE:=Vulkan-Headers-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/Vulkan-Headers/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DIR:=$(BUILD_DIR)/Vulkan-Headers-$(PKG_VERSION)

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
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{vk_video,vulkan} \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{cmake,vulkan} \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,vulkan-headers))
