include $(TOPDIR)/rules.mk

PKG_NAME:=spirv-headers
PKG_VERSION:=1.4.350.0
PKG_RELEASE:=1

PKG_SOURCE:=SPIRV-Headers-vulkan-sdk-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/SPIRV-Headers/archive/vulkan-sdk-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DIR:=$(BUILD_DIR)/SPIRV-Headers-vulkan-sdk-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/SPIRV-Headers-vulkan-sdk-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/spirv-headers
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SPIRV-Headers
	DEPENDS:=
	URL:=https://github.com/KhronosGroup/SPIRV-Headers
endef

define Package/spirv-headers/description
	This repository contains machine-readable files for the SPIR-V Registry.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/share/pkgconfig/SPIRV-Headers.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,spirv-headers))
