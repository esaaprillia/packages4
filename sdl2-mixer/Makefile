include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2-mixer
PKG_VERSION:=2.8.1
PKG_RELEASE:=1

PKG_SOURCE:=SDL2_mixer-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libsdl-org/SDL_mixer/releases/download/release-$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL2_mixer-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl2-mixer
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An audio mixer that supports various file formats for Simple Directmedia Layer.
	DEPENDS:=+sdl2 +flac +libvorbis +mpg123 +libopusfile +libfluidsynth +libxmp +libwavpack
	URL:=https://github.com/libsdl-org/SDL_mixer
endef

define Package/sdl2-mixer/description
	A simple multi-channel audio mixer
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SDL2_mixer.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SDL2_mixer.pc
endef

define Package/sdl2-mixer/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2-mixer))
