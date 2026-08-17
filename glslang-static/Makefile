include $(TOPDIR)/rules.mk

PKG_NAME:=glslang-static
PKG_VERSION:=1.4.357.0
PKG_RELEASE:=1

PKG_SOURCE:=glslang-vulkan-sdk-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/glslang/archive/vulkan-sdk-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND BSD-2-Clause AND MIT AND Apache-2.0 AND GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR :=build

PKG_BUILD_DIR:=$(BUILD_DIR)/glslang-vulkan-sdk-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/glslang-static
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Khronos reference front-end for GLSL, ESSL, and sample SPIR-V generator
	DEPENDS:=+spirv-tools
	URL:=https://github.com/KhronosGroup/glslang
endef

define Package/glslang-static/description
	Khronos-reference front end for GLSL/ESSL, partial front end for HLSL, and a SPIR-V generator.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=OFF \
	-DBUILD_EXTERNAL=OFF \
	-DALLOW_EXTERNAL_SPIRV_TOOLS=YES \
	-DGLSLANG_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call BuildPackage,glslang-static))
