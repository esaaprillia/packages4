include $(TOPDIR)/rules.mk

PKG_NAME:=sndio
PKG_VERSION:=1.10.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://sndio.org/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sndio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Portable version of OpenBSD's lightweight audio & MIDI sub-system
	DEPENDS:=+alsa-lib
	URL:=https://sndio.org/
endef

define Package/sndio/description
	Sndio is a small audio and MIDI framework part of the OpenBSD project and ported to FreeBSD, Linux and NetBSD.
	It provides a lightweight audio & MIDI server and a fully documented user-space API to access either the server or the hardware directly in a uniform way.
	Sndio is designed to work for desktop applications, but pays special attention to synchronization mechanisms and reliability required by music applications. Reliability through simplicity are part of the project goals.
endef

CONFIGURE_ARGS = \
	--prefix=/usr \
	--without-libbsd

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/sndio.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/sndio/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,sndio))
