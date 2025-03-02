include $(TOPDIR)/rules.mk

PKG_NAME:=jasper
PKG_VERSION:=4.2.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/jasper-software/jasper/releases/download/version-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/jasper
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Official Repository for the JasPer Image Coding Toolkit
	DEPENDS:=+libjpeg-turbo
	URL:=http://www.ece.uvic.ca/~mdadams/jasper
endef

define Package/jasper/description
	This is the source distribution for JasPer. JasPer is a collection of software (i.e., a library and application programs) for the coding and manipulation of images.
	This software can handle image data in a variety of formats. One such format supported by JasPer is the JPEG-2000 format defined in ISO/IEC 15444-1.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DJAS_ENABLE_OPENGL=OFF \
	-DJAS_ENABLE_LIBJPEG=ON \
	-DJAS_ENABLE_AUTOMATIC_DEPENDENCIES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/jasper.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/jasper.pc
endef

define Package/jasper/install
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

$(eval $(call BuildPackage,jasper))
