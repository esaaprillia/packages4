include $(TOPDIR)/rules.mk

PKG_NAME:=uchardet
PKG_VERSION:=0.0.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.freedesktop.org/software/uchardet/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-1.1
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/uchardet
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Encoding detector library ported from Mozilla
	DEPENDS:=
	URL:=https://www.freedesktop.org/wiki/Software/uchardet/
endef

define Package/uchardet/description
uchardet is an encoding detector library, which takes a sequence of bytes in an unknown character encoding without any additional information, and attempts to determine the encoding of the text. Returned encoding names are iconv-compatible.
uchardet started as a C language binding of the original C++ implementation of the universal charset detection library by Mozilla. It can now detect more charsets, and more reliably than the original implementation.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/uchardet \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
	
	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/uchardet.pc
	
	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/uchardet.pc
endef

define Package/uchardet/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/uchardet \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,uchardet))
