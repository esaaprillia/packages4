include $(TOPDIR)/rules.mk

PKG_NAME:=highway
PKG_VERSION:=1.4.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/highway/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/highway
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Efficient and performance-portable vector software
	DEPENDS:=+libstdcpp
	URL:=https://github.com/google/highway
endef

define Package/highway/description
	Performance-portable, length-agnostic SIMD with runtime dispatch
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING=OFF \
	-DHWY_SYSTEM_GTEST=ON \
	-DHWY_CMAKE_RVV=OFF \
	-DHWY_ENABLE_EXAMPLES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libhwy*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libhwy*.pc
endef

define Package/highway/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,highway))
