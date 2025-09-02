include $(TOPDIR)/rules.mk

PKG_NAME:=graphicsmagick
PKG_VERSION:=1.3.45
PKG_RELEASE:=1

PKG_SOURCE:=GraphicsMagick-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://downloads.sourceforge.net/graphicsmagick/graphicsmagick/$(PKG_VERSION)/GraphicsMagick-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=Copyright.txt

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/GraphicsMagick-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/graphicsmagick
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Image processing system
	DEPENDS:=+libbz2 +libfreetype +libheif +libjpeg-turbo +libltdl +libpng +libtiff +libwebp +libwmf +libxml2 +zlib +libzstd
	URL:=http://www.graphicsmagick.org/
endef

define Package/graphicsmagick/description
GraphicsMagick is the swiss army knife of image processing. Comprised of 284K physical lines (according to David A. Wheeler's SLOCCount) of source code in the base package, it provides a robust and efficient collection of tools and libraries which support reading, writing, and manipulating an image in over 92 major formats including important formats like DPX, GIF, JPEG, JPEG-2000, JXL, PNG, PDF, PNM, TIFF, and WebP.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--disable-openmp \
	--disable-static \
	--enable-shared \
	--with-gs-font-dir=/usr/share/fonts/Type1 \
	--with-modules \
	--without-perl \
	--with-quantum-depth=16 \
	--with-threads \
	--with-ttf \
	--with-webp

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/GraphicsMagick \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	
	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/GraphicsMagick*.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/GraphicsMagick*.pc
endef

define Package/graphicsmagick/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{GraphicsMagick-$(PKG_VERSION),*.so*} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,graphicsmagick))
