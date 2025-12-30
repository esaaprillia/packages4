include $(TOPDIR)/rules.mk

PKG_NAME:=rtmpdump
PKG_VERSION:=2.6
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://git.ffmpeg.org/rtmpdump.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=138fdb258d9fc26f1843fd1b891180416c9dc575
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-only LGPL-2.1-only
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/rtmpdump
	SECTION:=net
	CATEGORY:=Network
	TITLE:=A toolkit for RTMP streams
	DEPENDS:=+libstdcpp +libgmp +libgnutls +libnettle +zlib
	URL:=https://rtmpdump.mplayerhq.hu/
endef

define Package/rtmpdump/description
	rtmpdump is a toolkit for RTMP streams.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CC)" \
		LD="$(TARGET_LD)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		XLDFLAGS="$(TARGET_LDFLAGS)" \
		OPT="$(TARGET_CFLAGS)" \
		prefix=/usr \
		mandir=/usr/share/man \
		DESTDIR="$(PKG_INSTALL_DIR)" install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/librtmp.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/librtmp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/librtmp.pc
endef

define Package/rtmpdump/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rtmpdump))
