include $(TOPDIR)/rules.mk

PKG_NAME:=poppler
PKG_VERSION:=25.12.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://poppler.freedesktop.org/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING COPYING3

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=boost

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/poppler
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Poppler is a PDF rendering library
	DEPENDS:=+libstdcpp +libcairo +glib2 +fontconfig +lcms2 +libjpeg-turbo +libpng +libxml2 +libnss +openjpeg +libcurl +libtiff +libintl-full +zlib
	URL:=https://poppler.freedesktop.org/
endef

define Package/poppler/description
	PDF rendering library based on xpdf 3.0 (development files)
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_CPP_TESTS=OFF \
	-DBUILD_GTK_TESTS=OFF \
	-DBUILD_MANUAL_TESTS=OFF \
	-DBUILD_QT5_TESTS=OFF \
	-DBUILD_QT6_TESTS=OFF \
	-DENABLE_BOOST=ON \
	-DENABLE_GPGME=OFF \
	-DENABLE_LIBCURL=ON \
	-DENABLE_QT5=OFF \
	-DENABLE_QT6=OFF \
	-DENABLE_UNSTABLE_API_ABI_HEADERS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/poppler*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/poppler*.pc
endef

define Package/poppler/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,poppler))
