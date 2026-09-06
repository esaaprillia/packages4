include $(TOPDIR)/rules.mk

PKG_NAME:=ffmpeg
PKG_VERSION:=8.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://ffmpeg.org/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 GPL-3.0 LGPL-2.1 LGPL-3.0
PKG_LICENSE_FILES:=COPYING.GPLv2 COPYING.GPLv3 COPYING.LGPLv2.1 COPYING.LGPLv3

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/ffmpeg
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(program ffmpeg)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavdevice \
	+libavfilter \
	+libavformat \
	+libavutil \
	+libswresample \
	+libswscale
endef

define Package/ffmpeg/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (program ffmpeg)
endef

define Package/ffprobe
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(cli media identifier)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavdevice \
	+libavfilter \
	+libavformat \
	+libavutil \
	+libswresample \
	+libswscale
endef

define Package/ffprobe/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (cli media identifier)
endef

define Package/ffplay
	SECTION:=multimedia
	CATEGORY:=Multimedia
	TITLE:=(example media player)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavdevice \
	+libavfilter \
	+libavformat \
	+libavutil \
	+libswresample \
	+libswscale
endef

define Package/ffplay/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (example media player)
endef

define Package/libavcodec
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavcodec library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavutil \
	+libswresample \
	+lame-lib \
	+libopus \
	+shine \
	+fdk-aac \
	+libx264 \
	+libx265 \
	+twolame \
	+xvidcore \
	+libvpx \
	+libvorbis \
	+libtheora \
	+rav1e \
	+dav1d \
	+libaom \
	+libwebp \
	+zlib
endef

define Package/libavcodec/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavcodec library)
endef

define Package/libavdevice
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavdevice library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavfilter \
	+libavformat \
	+libavutil \
	+alsa-lib \
	+libv4l
endef

define Package/libavdevice/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavdevice library)
endef

define Package/libavfilter
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavfilter library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavformat \
	+libavutil \
	+libswresample \
	+libswscale \
	+libfreetype \
	+libass \
	+harfbuzz
endef

define Package/libavfilter/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavfilter library)
endef

define Package/libavformat
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavformat library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavcodec \
	+libavutil \
	+libbz2 \
	+libgnutls \
	+libxml2 \
	+libssh \
	+srt
endef

define Package/libavformat/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavformat library)
endef

define Package/libavutil
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libavutil library)
	URL:=https://ffmpeg.org/
	DEPENDS:=+libva +libxcb
endef

define Package/libavutil/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libavutil library)
endef

define Package/libswresample
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libswresample library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavutil
endef

define Package/libswresample/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libswresample library)
endef

define Package/libswscale
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=(libswscale library)
	URL:=https://ffmpeg.org/
	DEPENDS:= \
	+libavutil
endef

define Package/libswscale/description
Complete and free Internet live audio and video broadcasting solution for Linux/Unix (libswscale library)
endef

#TARGET_LDFLAGS += -Wl,-rpath-link=$(STAGING_DIR)/usr/lib/pulseaudio

CONFIGURE_ARGS = \
	--enable-cross-compile \
	--cross-prefix="$(TARGET_CROSS)" \
	--arch="$(ARCH)" \
	--target-os=linux \
	--pkg-config="pkg-config" \
	--prefix=/usr \
	--enable-shared \
	--enable-static \
	--enable-pthreads \
	--enable-gpl \
	--enable-version3 \
	--enable-nonfree \
	--enable-lto=auto \
	--disable-doc \
	--disable-debug \
	--disable-lzma \
	--enable-alsa \
	--enable-gnutls \
	--enable-libopus \
	--enable-libv4l2 \
	--enable-libshine \
	--enable-libmp3lame \
	--enable-libx264 \
	--enable-libx265 \
	--enable-libfdk-aac \
	--enable-libtwolame \
	--enable-libxvid \
	--enable-vaapi \
	--enable-libfreetype \
	--enable-libharfbuzz \
	--enable-libass \
	--enable-libsrt \
	--enable-libssh \
	--enable-libtheora \
	--enable-libvpx \
	--enable-libvorbis \
	--enable-libwebp \
	--enable-libdav1d \
	--enable-librav1e \
	--enable-libxml2 \
	--enable-libaom \
	--enable-libxcb

define Build/Compile
	+$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/{*.so*,*.a} $(1)/usr/lib/
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

define Package/libavcodec/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavcodec.so.* $(1)/usr/lib/
endef

define Package/libavdevice/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavdevice.so.* $(1)/usr/lib/
endef

define Package/libavfilter/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavfilter.so.* $(1)/usr/lib/
endef

define Package/libavformat/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavformat.so.* $(1)/usr/lib/
endef

define Package/libavutil/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libavutil.so.* $(1)/usr/lib/
endef

define Package/libswresample/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libswresample.so.* $(1)/usr/lib/
endef

define Package/libswscale/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libswscale.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ffmpeg))
$(eval $(call BuildPackage,ffprobe))
#$(eval $(call BuildPackage,ffplay))
$(eval $(call BuildPackage,libavcodec))
$(eval $(call BuildPackage,libavdevice))
$(eval $(call BuildPackage,libavfilter))
$(eval $(call BuildPackage,libavformat))
$(eval $(call BuildPackage,libavutil))
$(eval $(call BuildPackage,libswresample))
$(eval $(call BuildPackage,libswscale))
