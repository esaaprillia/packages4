include $(TOPDIR)/rules.mk

PKG_NAME:=libheif
PKG_VERSION:=1.20.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/strukturag/libheif/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libheif
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libheif is an HEIF and AVIF file format decoder and encoder.
	DEPENDS:=+libstdcpp +libaom +libde265 +libwebp +x265 +libtiff +libpng +libjpeg-turbo +openh264
	URL:=https://github.com/strukturag/libheif/
endef

define Package/libheif/description
	libheif is an ISO/IEC 23008-12:2017 HEIF and AVIF (AV1 Image File Format) file format decoder and encoder.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libheif.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libheif.pc
endef

define Package/libheif/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libheif))
