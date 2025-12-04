include $(TOPDIR)/rules.mk

PKG_NAME:=hdf5
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/HDFGroup/hdf5/releases/download/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE LICENSE_LBNL_HDF5

PKG_USE_NINJA:=0
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
#PKG_BUILD_DEPENDS:=hdf5/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

#FC=gfortran

define Package/hdf5
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=HDF5 is a data model, library, and file format for storing and managing data
	DEPENDS:=+libaec +zlib +libstdcpp +INSTALL_GFORTRAN:libgfortran
	URL:=https://github.com/HDFGroup/hdf5/
endef

define Package/hdf5/description
	This repository contains a high-performance library's source code and a file format specification that implements the HDF5® data model.
	The model has been adopted across many industries, and this implementation has become a de facto data management standard in science, engineering, and research communities worldwide.
endef

define Build/Configure
	$(call Build/Configure/Default)
	$(INSTALL_BIN) files/native/* $(PKG_BUILD_DIR)/build/bin/
endef

CMAKE_HOST_OPTIONS += \
	-DHDF5_BUILD_FORTRAN=ON \
	-DBUILD_TESTING=OFF \
	-DCMAKE_Fortran_COMPILER=gfortran

CMAKE_OPTIONS += \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_STATIC_LIBS=OFF \
    -DBUILD_TESTING=OFF \
    -DHDF5_BUILD_CPP_LIB=ON \
    -DHDF5_BUILD_HL_LIB=ON \
    -DHDF5_BUILD_FORTRAN=ON \
    -DHDF5_BUILD_JAVA=OFF \
    -DHDF5_ENABLE_Z_LIB_SUPPORT=ON \
    -DHDF5_ENABLE_SZIP_SUPPORT=ON \
    -DHDF5_ENABLE_SZIP_ENCODING=ON \
    -DCMAKE_Fortran_COMPILER=aarch64-openwrt-linux-musl-gfortran

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/hdf5*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/hdf5*.pc
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin
	$(CP) $(HOST_BUILD_DIR)/build/bin/{H5match_types,H5_buildiface} $(STAGING_DIR_HOSTPKG)/bin/
endef

define Package/hdf5/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,hdf5))
