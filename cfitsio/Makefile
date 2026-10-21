include $(TOPDIR)/rules.mk

PKG_NAME:=cfitsio
PKG_VERSION:=4.7.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/heasarc/cfitsio/archive/cfitsio-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LicenseRef-cfitsio
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cfitsio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C and Fortran library for reading and writing FITS files
	DEPENDS:=+libcurl +zlib
	URL:=https://github.com/heasarc/cfitsio
endef

define Package/cfitsio/description
	CFITSIO is a library of ANSI C routines for reading and writing FITS format data files.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCMAKE_Fortran_COMPILER="$(TARGET_CROSS)gfortran"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/cfitsio.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/cfitsio.pc
endef

define Package/cfitsio/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,cfitsio))
