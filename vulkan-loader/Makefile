include $(TOPDIR)/rules.mk

PKG_NAME:=vulkan-loader
PKG_VERSION:=1.4.337
PKG_RELEASE:=1

PKG_SOURCE:=Vulkan-Loader-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/Vulkan-Loader/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/Vulkan-Loader-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/vulkan-loader
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Vulkan Loader
	DEPENDS:=+libstdcpp
	URL:=https://github.com/KhronosGroup/Vulkan-Loader
endef

define Package/zimg/description
	This project provides the Khronos official Vulkan Loader for all platforms except
endef

CMAKE_OPTIONS += \
	-DVULKAN_HEADERS_INSTALL_DIR=/usr \
	-DBUILD_WSI_XCB_SUPPORT=OFF \
	-DBUILD_WSI_XLIB_SUPPORT=OFF \
	-DBUILD_WSI_XLIB_XRANDR_SUPPORT=OFF \
	-DBUILD_WSI_WAYLAND_SUPPORT=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/vulkan.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/vulkan.pc
endef

define Package/zimg/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,vulkan-loader))
