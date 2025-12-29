include $(TOPDIR)/rules.mk

PKG_NAME:=sdl2
PKG_VERSION:=2.32.10
PKG_RELEASE:=1

PKG_SOURCE:=SDL2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.libsdl.org/release
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL2-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple Directmedia Layer
	DEPENDS:=+alsa-lib +pulseaudio-daemon +libsamplerate +libusb-1.0
	URL:=https://www.libsdl.org/
endef

define Package/sdl2/description
	development library designed to provide low level access to audio, keyboard, mouse, joystick and graphics
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True \
	-DSDL_ALSA=ON \
	-DSDL_JACK=OFF \
	-DSDL_CLOCK_GETTIME=ON \
	-DSDL_ARTS=OFF \
	-DSDL_ESD=OFF \
	-DSDL_NAS=OFF \
	-DSDL_RPATH=OFF \
	-DSDL_X11=OFF \
	-DSDL_DIRECTFB=OFF \
	-DSDL_WAYLAND=OFF \
	-DSDL_STATIC=ON \
	-DSDL_SHARED=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sdl2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sdl2.pc
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/sdl2-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/sdl2-config $(2)/bin/sdl2-config
endef

define Package/sdl2/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl2))
