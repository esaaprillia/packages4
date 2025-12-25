include $(TOPDIR)/rules.mk

PKG_NAME:=zimg
PKG_VERSION:=3.0.6
PKG_RELEASE:=1

PKG_SOURCE:=release-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/sekrit-twc/zimg/archive/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=WTFPL
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/zimg-release-$(PKG_VERSION)
PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/zimg
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Scaling, colorspace conversion, and dithering library
	DEPENDS:=+libstdcpp
	URL:=https://github.com/sekrit-twc/zimg
endef

define Package/zimg/description
	The "z" library implements the commonly required image processing basics of scaling, colorspace conversion, and depth conversion.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/zimg.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/zimg.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/zimg.pc
endef

define Package/zimg/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,zimg))
