include $(TOPDIR)/rules.mk

PKG_NAME:=glslang
PKG_VERSION:=1.4.357.0
PKG_RELEASE:=1

PKG_SOURCE:=glslang-vulkan-sdk-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/glslang/archive/vulkan-sdk-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND BSD-2-Clause AND MIT AND Apache-2.0 AND GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=glslang-static
PKG_BUILD_DIR:=$(BUILD_DIR)/glslang-vulkan-sdk-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=spirv-tools/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/glslang-vulkan-sdk-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/glslang
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Khronos reference front-end for GLSL, ESSL, and sample SPIR-V generator
	DEPENDS:=+spirv-tools
	URL:=https://github.com/KhronosGroup/glslang
endef

define Package/glslang/description
	Khronos-reference front end for GLSL/ESSL, partial front end for HLSL, and a SPIR-V generator.
endef

CMAKE_HOST_OPTIONS += \
	-DBUILD_EXTERNAL=OFF \
	-DALLOW_EXTERNAL_SPIRV_TOOLS=YES \
	-DGLSLANG_TESTS=OFF

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_EXTERNAL=OFF \
	-DALLOW_EXTERNAL_SPIRV_TOOLS=YES \
	-DGLSLANG_TESTS=OFF

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/glslang $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/cmake $(1)/usr/lib/
endef

define Package/glslang/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,glslang))
