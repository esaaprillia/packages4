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

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=imlib2 ladspa vulkan-loader

include $(INCLUDE_DIR)/package.mk

define Package/ffmpeg
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(program ffmpeg)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavdevice +ffmpeg-libavfilter +ffmpeg-libavformat +ffmpeg-libavutil +ffmpeg-libswresample +ffmpeg-libswscale
endef

define Package/ffmpeg/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (program ffmpeg)
endef

define Package/ffprobe
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(cli media identifier)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavdevice +ffmpeg-libavfilter +ffmpeg-libavformat +ffmpeg-libavutil +ffmpeg-libswresample +ffmpeg-libswscale
endef

define Package/ffprobe/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (cli media identifier)
endef

define Package/ffplay
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(example media player)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavdevice +ffmpeg-libavfilter +ffmpeg-libavformat +ffmpeg-libavutil +ffmpeg-libswresample +ffmpeg-libswscale +sdl2 +libplacebo
endef

define Package/ffplay/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (example media player)
endef

define Package/ffmpeg-libavcodec
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavcodec library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavutil +ffmpeg-libswresample +libaom +dav1d +libjxl +lame-lib +libopus +shaderc +libtheora +libva +libvorbis +libvpx +libwebp +libx264 +x265 +svt-av1 +xvidcore +zlib
endef

define Package/ffmpeg-libavcodec/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavcodec library)
endef

define Package/ffmpeg-libavdevice
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavdevice library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavfilter +ffmpeg-libavformat +ffmpeg-libavutil +alsa-lib +libdrm +pulseaudio-daemon +libv4l
endef

define Package/ffmpeg-libavdevice/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavdevice library)
endef

define Package/ffmpeg-libavfilter
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavfilter library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavformat +ffmpeg-libavutil +ffmpeg-libswresample +ffmpeg-libswscale +libass +fontconfig +libfreetype +fribidi +harfbuzz +lilv +libplacebo +shaderc +libva +libzmq-nc +vidstab +zimg
endef

define Package/ffmpeg-libavfilter/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavfilter library)
endef

define Package/ffmpeg-libavformat
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavformat library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavcodec +ffmpeg-libavutil +libbluray +libbz2 +libopenssl +libopenssl-legacy +libopenmpt +librist +srt +libssh +libxml2 +libzmq-nc +zlib
endef

define Package/ffmpeg-libavformat/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavformat library)
endef

define Package/ffmpeg-libavutil
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavutil library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+libopenssl +libopenssl-legacy +libdrm +libva +libvpl
endef

define Package/ffmpeg-libavutil/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavutil library)
endef

define Package/ffmpeg-libswresample
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libswresample library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavutil +soxr
endef

define Package/ffmpeg-libswresample/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libswresample library)
endef

define Package/ffmpeg-libswscale
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libswscale library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+ffmpeg-libavutil
endef

define Package/ffmpeg-libswscale/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libswscale library)
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
	--disable-doc \
	--disable-debug \
	--disable-librtmp \
	--disable-lzma \
	--disable-static \
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
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
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
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ffmpeg $(1)/usr/bin/
endef

define Package/ffprobe/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ffprobe $(1)/usr/bin/
endef

define Package/ffplay/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ffplay $(1)/usr/bin/
endef

define Package/ffmpeg-libavcodec/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavcodec.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libavdevice/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavdevice.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libavfilter/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavfilter.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libavformat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavformat.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libavutil/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavutil.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libswresample/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libswresample.so.* $(1)/usr/lib/
endef

define Package/ffmpeg-libswscale/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libswscale.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ffmpeg))
$(eval $(call BuildPackage,ffprobe))
$(eval $(call BuildPackage,ffplay))
$(eval $(call BuildPackage,ffmpeg-libavcodec))
$(eval $(call BuildPackage,ffmpeg-libavdevice))
$(eval $(call BuildPackage,ffmpeg-libavfilter))
$(eval $(call BuildPackage,ffmpeg-libavformat))
$(eval $(call BuildPackage,ffmpeg-libavutil))
$(eval $(call BuildPackage,ffmpeg-libswresample))
$(eval $(call BuildPackage,ffmpeg-libswscale))
