include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2-gfx
PKG_VERSION:=1.0.4
PKG_RELEASE:=1

PKG_SOURCE:=SDL2_gfx-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.ferzkopp.net/Software/SDL2_gfx/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL2_gfx-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sdl2-gfx
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SDL2 graphics drawing primitives and other support functions
	DEPENDS:=+sdl2
	URL:=https://www.ferzkopp.net/wordpress/2016/01/02/sdl_gfx-sdl2_gfx/
endef

define Package/sdl2-gfx/description
	Graphics drawing primitives and other support functions wrapped up in an add-on, C-based library for the Simple Direct Media (SDL) cross-platform API layer.
	SDL_gfx supports the original SDL1 library using software surfaces, and SDL2_gfx supports SDL2 using rendering functions.
endef

CONFIGURE_ARGS+= \
	--disable-mmx

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/SDL2 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/SDL2_gfx.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/SDL2_gfx.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/SDL2_gfx.pc
endef

define Package/sdl2-gfx/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2-gfx))
