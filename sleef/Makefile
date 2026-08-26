include $(TOPDIR)/rules.mk

PKG_NAME:=sleef
PKG_VERSION:=3.9.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/shibatch/sleef/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=sleef/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sleef
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SIMD Library for Evaluating Elementary Functions, vectorized libm and DFT
	DEPENDS:=
	URL:=https://sleef.org/
endef

define Package/sleef/description
	SLEEF is a library that implements vectorized versions of C standard math functions. This library also includes DFT subroutines.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DSLEEF_BUILD_TESTS=OFF -DNATIVE_BUILD_DIR="$(STAGING_DIR_HOSTPKG)"

CMAKE_HOST_OPTIONS += \
	-DSLEEF_BUILD_TESTS=OFF

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin
	$(CP) $(HOST_BUILD_DIR)/build/bin/* $(STAGING_DIR_HOSTPKG)/bin/
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libbrotli*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libbrotli*.pc
endef

define Package/sleef/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,sleef))
