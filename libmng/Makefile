include $(TOPDIR)/rules.mk

PKG_NAME:=libmng
PKG_VERSION:=2.0.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://downloads.sourceforge.net/sourceforge/$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LicenseRef-libmng
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libmng
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A collection of routines used to create and manipulate MNG format graphics files
	DEPENDS:=+lcms2 +libjpeg-turbo +zlib
	URL:=https://www.libmng.com/
endef

define Package/libmng/description
libmng -THE reference library for reading, displaying, writing and examining Multiple-Image Network Graphics.
MNG is the animation extension to the popular PNG image-format.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--disable-static \
	--with-zlib \
	--with-jpeg \
	--with-lcms2

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libmng/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libmng))

