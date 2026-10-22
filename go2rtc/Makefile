include $(TOPDIR)/rules.mk

PKG_NAME:=podofo
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/podofo/podofo/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=COPYING.LGPL COPYING.MPL

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/podofo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A C++17 PDF manipulation library
	DEPENDS:=+fontconfig +libfreetype +libidn +libjpeg-turbo +libpng +libtiff +libxml2 +lua5.4 +libopenssl +zlib
	URL:=http://podofo.sourceforge.net/
endef

define Package/podofo/description
	PoDoFo is a free portable C++ library to work with the PDF file format.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DPODOFO_BUILD_TOOLS=True \
	-DPODOFO_HAVE_JPEG_LIB=True \
	-DPODOFO_HAVE_PNG_LIB=True \
	-DPODOFO_HAVE_TIFF_LIB=True

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libpodofo.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libpodofo.pc
endef

define Package/podofo/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,podofo))
