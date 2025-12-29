include $(TOPDIR)/rules.mk

PKG_NAME:=imlib2
PKG_VERSION:=1.12.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://downloads.sourceforge.net/enlightenment/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Imlib2
PKG_LICENSE_FILES:=COPYING COPYING-PLAIN

PKG_INSTALL:=1
include $(INCLUDE_DIR)/package.mk

define Package/imlib2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Image manipulation library
	DEPENDS:=+libfreetype +libtiff +bzip2 +giflib +libheif +libid3tag +libjpeg-turbo +libpng +libwebp +liblzma +zlib
	URL:=https://sourceforge.net/projects/enlightenment/
endef

define Package/imlib2/description
	Enlightenment is a window manager for the X11 windowing system.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--sysconfdir=/etc/imlib2 \
	--disable-static \
	--enable-visibility-hiding \
	--without-x \
	--with-bzip2 \
	--with-gif \
	--with-heif \
	--with-id3 \
	--with-jpeg \
	--with-png \
	--with-tiff \
	--with-webp \
	--with-zlib

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/imlib2.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/imlib2.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/imlib2.pc
endef

define Package/imlib2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/imlib2 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/imlib2 $(1)/usr/share/
endef

$(eval $(call BuildPackage,imlib2))
