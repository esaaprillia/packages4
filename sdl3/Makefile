include $(TOPDIR)/rules.mk

PKG_NAME:=sdl3
PKG_VERSION:=3.4.4
PKG_RELEASE:=1

PKG_SOURCE:=SDL3-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/libsdl-org/SDL/releases/download/release-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Zlib
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/SDL3-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/sdl3
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple Directmedia Layer
	DEPENDS:=+alsa-lib +pulseaudio-daemon +libsamplerate +libusb-1.0
	URL:=https://www.libsdl.org/
endef

define Package/sdl3/description
	development library designed to provide low level access to audio, keyboard, mouse, joystick and graphics
endef

CMAKE_OPTIONS += \
	-DCMAKE_JOB_POOLS=thr=3 \
	-DCMAKE_JOB_POOL_LINK=thr \
	-DBUILD_SHARED_LIBS=True \
	-DSDL_TESTS=OFF \
	-DSDL_ALSA=ON \
	-DSDL_JACK=OFF \
	-DSDL_CLOCK_GETTIME=ON \
	-DSDL_RPATH=OFF \
	-DSDL_X11=OFF \
	-DSDL_WAYLAND=OFF \
	-DSDL_STATIC=ON \
	-DSDL_SHARED=ON \

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sdl3.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sdl3.pc
endef

define Package/sdl3/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sdl3))
