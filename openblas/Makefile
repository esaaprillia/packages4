include $(TOPDIR)/rules.mk

PKG_NAME:=openblas
PKG_VERSION:=0.3.28
PKG_RELEASE:=2

PKG_SOURCE:=OpenBLAS-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/OpenMathLib/OpenBLAS/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/OpenBLAS-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/OpenBLAS-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/openblas
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=fast BSD-licensed BLAS based on gotoBLAS2, with LAPACK
	DEPENDS:=+INSTALL_GFORTRAN:libgfortran
	URL:=https://www.openblas.net/
endef

define Package/openblas/description
	OpenBLAS is an optimized BLAS library based on GotoBLAS2 1.13 BSD version.
endef

CMAKE_HOST_OPTIONS += \
	-Wno-dev \
	-DNOFORTRAN=1

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DNOFORTRAN=1

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/openblas \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/openblas.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/openblas.pc
endef

define Package/openblas/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,openblas))
$(eval $(call HostBuild))
