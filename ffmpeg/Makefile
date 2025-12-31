include $(TOPDIR)/rules.mk

PKG_NAME:=ffmpeg
PKG_VERSION:=8.0.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://ffmpeg.org/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 GPL-3.0 LGPL-2.1 LGPL-3.0
PKG_LICENSE_FILES:=COPYING.GPLv2 COPYING.GPLv3 COPYING.LGPLv2.1 COPYING.LGPLv3

include $(INCLUDE_DIR)/package.mk

define Package/ffmpeg
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A complete, cross-platform solution to record, convert and stream audio and video.
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+alsa-lib \
	+libaom \
	+bzip2 \
	+coreutils \
	+dav1d \
	+fontconfig \
	+libfreetype \
	+fribidi \
	+harfbuzz \
	+imlib2 \
	+ladspa \
	+lame \
	+libass \
	+libbluray \
	+libdrm \
	+libjxl \
	+libopenmpt \
	+libplacebo \
	+librist \
	+srt \
	+libssh \
	+libtheora \
	+libva \
	+libvorbis \
	+libvpx \
	+libwebp \
	+libxml2 \
	+lilv \
	+libopenssl \
	+libopus \
	+pulseaudio-daemon \
	+shaderc \
	+sdl2 \
	+soxr \
	+v4l-utils \
	+vidstab \
	+vulkan-loader \
	+libx264 \
	+x265 \
	+xvidcore \
	+libzmq-nc \
	+zimg \
	+zlib \
	+svt-av1 \
	+libvpl
endef

define Package/ffmpeg/description
	FFmpeg is the leading multimedia framework, able to decode, encode, transcode, mux, demux, stream, filter and play pretty much anything that humans and machines have created.
endef

TARGET_LDFLAGS += -Wl,-rpath-link=$(STAGING_DIR)/usr/lib/pulseaudio

CONFIGURE_ARGS = \
	--enable-cross-compile \
	--cross-prefix="$(TARGET_CROSS)" \
	--disable-runtime-cpudetect \
	--arch="$(ARCH)" \
	--target-os=linux \
	--pkg-config="pkg-config" \
	--prefix=/usr \
	--disable-librtmp \
	--disable-lzma \
	--disable-static \
	--disable-stripping \
	--enable-avfilter \
	--enable-gpl \
	--enable-ladspa \
	--enable-libaom \
	--enable-libass \
	--enable-libbluray \
	--enable-libdav1d \
	--enable-libdrm \
	--enable-libfontconfig \
	--enable-libfreetype \
	--enable-libfribidi \
	--enable-libharfbuzz \
	--enable-libjxl \
	--enable-libmp3lame \
	--enable-libopenmpt \
	--enable-libopus \
	--enable-libplacebo \
	--enable-libpulse \
	--disable-librav1e \
	--enable-librist \
	--enable-libshaderc \
	--enable-libsoxr \
	--enable-libsrt \
	--enable-libssh \
	--enable-libtheora \
	--enable-libv4l2 \
	--enable-libvidstab \
	--enable-libvorbis \
	--enable-libvpx \
	--enable-libwebp \
	--enable-libx264 \
	--enable-libx265 \
	--disable-libxcb \
	--enable-libxml2 \
	--enable-libxvid \
	--enable-libzimg \
	--enable-libzmq \
	--enable-lto=auto \
	--enable-lv2 \
	--enable-openssl \
	--enable-pic \
	--enable-pthreads \
	--enable-shared \
	--enable-vaapi \
	--disable-vdpau \
	--enable-version3 \
	--enable-vulkan \
	--enable-libsvtav1 \
	--enable-libvpl

define Build/Compile
	+$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libav*.pc $(1)/usr/lib/pkgconfig/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libsw*.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libav*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libav*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libsw*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libsw*.pc
endef

define Package/ffmpeg/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ffmpeg))
