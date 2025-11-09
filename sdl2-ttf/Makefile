include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2-ttf
PKG_VERSION:=2.24.0
PKG_RELEASE:=1

PKG_SOURCE:=SDL2_ttf-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libsdl-org/SDL_ttf/releases/download/release-$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL2_ttf-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl2-ttf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Support for TrueType (.ttf) font files with Simple Directmedia Layer.
	DEPENDS:=+sdl2 +libfreetype
	URL:=https://github.com/libsdl-org/SDL_ttf
endef

define Package/sdl2-ttf/description
	This library is a wrapper around the FreeType and Harfbuzz libraries, allowing you to use TrueType fonts to render text in SDL applications.
endef

CMAKE_OPTIONS += \
	-DSDL2TTF_HARFBUZZ=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SDL2_ttf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SDL2_ttf.pc
endef

define Package/sdl2-ttf/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2-ttf))
