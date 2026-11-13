include $(TOPDIR)/rules.mk

PKG_NAME:=opencl
PKG_VERSION:=2026.05.29
PKG_RELEASE:=1

PKG_SOURCE:=OpenCL-SDK-v$(PKG_VERSION)-Source.tar.gz
PKG_SOURCE_URL:=https://github.com/KhronosGroup/OpenCL-SDK/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/OpenCL-SDK-v$(PKG_VERSION)-Source
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/OpenCL-SDK-v$(PKG_VERSION)-Source

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/opencl
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=OpenCL SDK
	DEPENDS:=
	URL:=https://khronos.org/opencl
endef

define Package/opencl/description
	This is the Khronos OpenCL SDK.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DOPENCL_SDK_BUILD_SAMPLES=OFF

CMAKE_HOST_OPTIONS += \
	-DBUILD_SHARED_LIBS=OFF \
	-DOPENCL_SDK_BUILD_SAMPLES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/opencl/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,opencl))
