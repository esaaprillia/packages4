include $(TOPDIR)/rules.mk

PKG_NAME:=spirv-tools
PKG_VERSION:=1.4.357.0
PKG_RELEASE:=1

PKG_SOURCE:=SPIRV-Tools-vulkan-sdk-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/SPIRV-Tools/archive/vulkan-sdk-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=spirv-headers
HOST_BUILD_DEPENDS:=spirv-headers/host
PKG_BUILD_DIR:=$(BUILD_DIR)/SPIRV-Tools-vulkan-sdk-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/SPIRV-Tools-vulkan-sdk-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/spirv-tools
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The SPIR-V Tools project provides an API and commands for processing SPIR-V modules.
	DEPENDS:=+libstdcpp
	URL:=https://github.com/KhronosGroup/SPIRV-Tools
endef

define Package/spirv-tools/description
	The project includes an assembler, binary module parser, disassembler, validator, and optimizer for SPIR-V.
endef

CMAKE_HOST_OPTIONS += \
	-DSPIRV_WERROR=OFF \
	-DSPIRV-Headers_SOURCE_DIR="$(STAGING_DIR_HOSTPKG)"

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DSPIRV_WERROR=OFF \
	-DSPIRV-Headers_SOURCE_DIR="$(STAGING_DIR)/usr" \
	-DSPIRV_TOOLS_BUILD_STATIC=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SPIRV*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SPIRV*.pc
endef

define Package/spirv-tools/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,spirv-tools))
