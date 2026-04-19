include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2-compat
PKG_VERSION:=2.32.66
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libsdl-org/sdl2-compat/releases/download/release-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl2-compat
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple DirectMedia Layer (SDL) sdl2-compat
	DEPENDS:=+sdl3
	URL:=https://github.com/libsdl-org/sdl2-compat
endef

define Package/sdl2-compat/description
	This is the Simple DirectMedia Layer, a general API that provides low level access to audio, keyboard, mouse, joystick, 3D hardware via OpenGL, and 2D framebuffer across multiple platforms.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sdl2-compat.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sdl2-compat.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/sdl2-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/sdl2-config $(2)/bin/sdl2-config
endef

define Package/sdl2-compat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2-compat))
