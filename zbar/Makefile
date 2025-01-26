include $(TOPDIR)/rules.mk

PKG_NAME:=zbar
PKG_VERSION:=0.23.93
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://linuxtv.org/downloads/zbar/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/zbar
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Port of ZBAR BAR CODE READER
	DEPENDS:=+iconv +libintl-full +libjpeg-turbo +imagemagick
	URL:=https://github.com/mchehab/zbar
endef

define Package/zbar/description
ZBar Bar Code Reader is an open source software suite for reading bar codes from various sources, such as video streams, image files and raw intensity sensors. It supports EAN-13/UPC-A, UPC-E, EAN-8, Code 128, Code 93, Code 39, Codabar, Interleaved 2 of 5, QR Code and SQ Code.
Included with the library are basic applications for decoding captured bar code images and using a video device (e.g. webcam) as a bar code scanner. For application developers, language bindings are included for C, C++, Python 2 and Perl as well as GUI widgets for Qt, GTK and PyGTK 2.0.
Zbar also supports sending the scanned codes via dbus, allowing its integration with other applications.
endef

CONFIGURE_ARGS += \
	--disable-doc \
	--disable-introspection \
	--without-directshow \
	--without-x \
	--without-xshm \
	--without-xv \
	--without-dbus \
	--without-npapi \
	--without-gtk \
	--without-gir \
	--without-python \
	--without-qt \
	--without-java

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/zbar/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/locale \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,zbar))
