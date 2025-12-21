include $(TOPDIR)/rules.mk

PKG_NAME:=speexdsp
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PKG_SOURCE:=speexdsp-SpeexDSP-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.xiph.org/xiph/speexdsp/-/archive/SpeexDSP-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/speexdsp-SpeexDSP-$(PKG_VERSION)

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/speexdsp
	SECTION:=net
	CATEGORY:=Network
	TITLE:=DSP library derived from speex
	DEPENDS:=+libstdcpp
	URL:=https://gitlab.xiph.org/xiph/speexdsp
endef

define Package/speexdsp/description
	SpeexDSP is a patent-free, Open Source/Free Software DSP library.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/speex $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/speexdsp.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/speexdsp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/speexdsp.pc
endef

define Package/speexdsp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,speexdsp))
