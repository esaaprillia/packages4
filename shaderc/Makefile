include $(TOPDIR)/rules.mk

PKG_NAME:=shaderc
PKG_VERSION:=2026.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_VERSION)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/shaderc/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/shaderc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A collection of tools, libraries, and tests for Vulkan shader compilation.
	DEPENDS:=+libstdcpp +spirv-tools +glslang
	URL:=https://github.com/google/shaderc/
endef

define Package/shaderc/description
	A collection of tools, libraries, and tests for Vulkan shader compilation.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DSHADERC_SKIP_TESTS=ON \
	-DSHADERC_ENABLE_TESTS=OFF \
	-DSHADERC_ENABLE_EXAMPLES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/shaderc*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/shaderc*.pc
endef

define Package/shaderc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,shaderc))
