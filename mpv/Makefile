include $(TOPDIR)/rules.mk

PKG_NAME:=mpv
PKG_VERSION:=0.39.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mpv-player/mpv/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 LGPL-2.1
PKG_LICENSE_FILES:=LICENSE.GPL LICENSE.LGPL

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/mpv
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Command line video player
	DEPENDS:=+alsa-lib +ffmpeg +libao +libarchive +pulseaudio-daemon +uchardet +zlib
	URL:=https://github.com/mpv-player/mpv
endef

define Package/mpv/description
	mpv is a free (as in freedom) media player for the command line. It supports a wide variety of media file formats, audio and video codecs, and subtitle types.
endef

MESON_ARGS += \
	-Dalsa=enabled \
	-Dbuild-date=false \
	-Dcaca=disabled \
	-Dcdda=disabled \
	-Ddvdnav=disabled \
	-Degl-drm=disabled \
	-Degl-wayland=disabled \
	-Degl-x11=disabled \
	-Degl=disabled \
	-Dgl=disabled \
	-Djack=disabled \
	-Dlibmpv=true \
	-Dpulse=enabled \
	-Dsndio=disabled \
	-Dtests=false \
	-Duchardet=enabled \
	-Dvdpau=disabled \
	-Dvulkan=enabled \
	-Dx11=disabled \
	-Dsixel=disabled \
	-Dvideotoolbox-pl=disabled

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/mpv \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/mpv/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/mpv \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,mpv))
