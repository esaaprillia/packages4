include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2-image
PKG_VERSION:=2.8.8
PKG_RELEASE:=1

PKG_SOURCE:=SDL2_image-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libsdl-org/SDL_image/releases/download/release-$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL2_image-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl2-image
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A simple library to load images of various formats as SDL surfaces
	DEPENDS:=+sdl2 +libjpeg-turbo +libpng +libwebp +libtiff +zlib
	URL:=https://github.com/libsdl-org/SDL_image
endef

define Package/sdl2-image/description
	Image decoding for many popular formats for Simple Directmedia Layer.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SDL2_image.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SDL2_image.pc
endef

define Package/sdl2-image/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2-image))
