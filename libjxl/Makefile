include $(TOPDIR)/rules.mk

PKG_NAME:=libjxl
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libjxl/libjxl/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libjxl
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=JPEG XL image format reference implementation
	DEPENDS:=+libstdcpp +brotli +lcms2 +highway +libpng +libjpeg-turbo +giflib +openexr
	URL:=https://github.com/libjxl/libjxl/
endef

define Package/libjxl/description
	This repository contains a reference implementation of JPEG XL (encoder and decoder), called libjxl. This software library is used by many applications that support JPEG XL.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING=OFF \
	-DJPEGXL_ENABLE_PLUGINS=ON \
	-DJPEGXL_ENABLE_PLUGIN_GIMP210=OFF \
	-DJPEGXL_ENABLE_BENCHMARK=OFF \
	-DJPEGXL_ENABLE_COVERAGE=OFF \
	-DJPEGXL_ENABLE_EXAMPLES=OFF \
	-DJPEGXL_ENABLE_FUZZERS=OFF \
	-DJPEGXL_ENABLE_SJPEG=OFF \
	-DJPEGXL_ENABLE_SKCMS=OFF \
	-DJPEGXL_ENABLE_VIEWERS=OFF \
	-DJPEGXL_FORCE_SYSTEM_GTEST=ON \
	-DJPEGXL_FORCE_SYSTEM_BROTLI=ON \
	-DJPEGXL_FORCE_SYSTEM_HWY=ON \
	-DJPEGXL_FORCE_SYSTEM_LCMS2=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libjxl*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libjxl*.pc
endef

define Package/libjxl/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libjxl))
