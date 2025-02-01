include $(TOPDIR)/rules.mk

PKG_NAME:=lapack
PKG_VERSION:=3.12.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Reference-LAPACK/lapack/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/lapack
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LAPACK development repository
	DEPENDS:=+INSTALL_GFORTRAN:libgfortran
	URL:=https://www.netlib.org/lapack/
endef

define Package/lapack/description
	LAPACK is a library of Fortran subroutines for solving the most commonly occurring problems in numerical linear algebra.
	LAPACK is a freely-available software package. It can be included in commercial software packages (and has been). We only ask that that proper credit be given to the authors, for example by citing the LAPACK Users' Guide. The license used for the software is the modified BSD license.
	Like all software, it is copyrighted. It is not trademarked, but we do ask the following: if you modify the source for these routines we ask that you change the name of the routine and comment the changes made to the original.
	We will gladly answer any questions regarding the software. If a modification is done, however, it is the responsibility of the person who modified the routine to provide support.
	LAPACK is available from GitHub. LAPACK releases are also available on netlib.
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DLAPACKE=OFF \
	-DCBLAS=OFF \
	-DTEST_FORTRAN_COMPILER=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
endef

define Package/lapack/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,lapack))
