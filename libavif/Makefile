include $(TOPDIR)/rules.mk

PKG_NAME:=libavif
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/AOMediaCodec/libavif/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libavif
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libavif - Library for encoding and decoding .avif files
	DEPENDS:=+libstdcpp +libaom +dav1d +libyuv +libpng +libjpeg-turbo +libwebp
	URL:=https://aomediacodec.github.io/av1-avif/
endef

define Package/libavif/description
	It can encode and decode all AV1 supported YUV formats and bit depths (with alpha). In addition to the library, encoder and decoder command line tools are also provided (avifenc and avifdec).
endef

CMAKE_OPTIONS += \
	-DAVIF_BUILD_APPS=ON \
	-DAVIF_BUILD_GDK_PIXBUF=OFF \
	-DAVIF_BUILD_TESTS=OFF \
	-DAVIF_CODEC_AOM=SYSTEM \
	-DAVIF_CODEC_DAV1D=SYSTEM \
	-DAVIF_LIBYUV=SYSTEM

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libavif.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libavif.pc
endef

define Package/libavif/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libavif))
