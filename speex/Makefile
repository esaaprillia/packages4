include $(TOPDIR)/rules.mk

PKG_NAME:=speex
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PKG_SOURCE:=speex-Speex-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.xiph.org/xiph/speex/-/archive/Speex-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/speex-Speex-$(PKG_VERSION)

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/speex
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Official speex voice codec repository
	DEPENDS:=+libstdcpp +libogg +speexdsp
	URL:=https://gitlab.xiph.org/xiph/speex
endef

define Package/speex/description
	The Speex is a patent-free, Open Source/Free Software voice codec. Unlike other codecs like MP3 and Ogg Vorbis, Speex is designed to compress voice at bitrates in the 2-45 kbps range. Possible applications include VoIP, internet audio streaming, archiving of speech data (e.g. voice mail), and audio books. In some sense, it is meant to be complementary to the Ogg Vorbis codec.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/speex $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/speex.pc $(1)/usr/lib/pkgconfig/
	$(INSTALL_DIR) $(1)/usr/share/aclocal
	$(CP) $(PKG_INSTALL_DIR)/usr/share/aclocal/speex.m4 $(1)/usr/share/aclocal/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/speex.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/speex.pc
endef

define Package/speex/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,speex))
