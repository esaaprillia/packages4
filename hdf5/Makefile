include $(TOPDIR)/rules.mk

PKG_NAME:=hdf5
PKG_VERSION:=1.14.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/HDFGroup/hdf5/releases/download/hdf5_$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE LICENSE_LBNL_HDF5

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/hdf5
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=HDF5 is a data model, library, and file format for storing and managing data
	DEPENDS:=+libaec +zlib +libstdcpp
	URL:=https://github.com/HDFGroup/hdf5/
endef

define Package/hdf5/description
	This repository contains a high-performance library's source code and a file format specification that implements the HDF5® data model.
	The model has been adopted across many industries, and this implementation has become a de facto data management standard in science, engineering, and research communities worldwide.
endef

export FC=aarch64-openwrt-linux-musl-gfortran
export ac_cv_sizeof_long_double=8
export hdf5_cv_ldouble_to_long_special=no
export hdf5_cv_long_to_ldouble_special=no
export hdf5_cv_ldouble_to_llong_accurate=yes
export hdf5_cv_llong_to_ldouble_correct=yes
export hdf5_cv_disable_some_ldouble_conv=no
export hdf5_cv_system_scope_threads=yes
export hdf5_cv_printf_ll="l"
export PAC_FC_MAX_REAL_PRECISION=15
export PAC_C_MAX_REAL_PRECISION=17
export PAC_FC_ALL_INTEGER_KINDS="{1,2,4,8,16}"
export PAC_FC_ALL_REAL_KINDS="{4,8}"
export H5CONFIG_F_NUM_RKIND="INTEGER, PARAMETER :: num_rkinds = 2"
export H5CONFIG_F_NUM_IKIND="INTEGER, PARAMETER :: num_ikinds = 5"
export H5CONFIG_F_RKIND="INTEGER, DIMENSION(1:num_rkinds) :: rkind = (/4,8/)"
export H5CONFIG_F_IKIND="INTEGER, DIMENSION(1:num_ikinds) :: ikind = (/1,2,4,8,16/)"
export PAC_FORTRAN_NATIVE_INTEGER_SIZEOF="4"
export PAC_FORTRAN_NATIVE_INTEGER_KIND=" 4"
export PAC_FORTRAN_NATIVE_REAL_SIZEOF="4"
export PAC_FORTRAN_NATIVE_REAL_KIND=" 4"
export PAC_FORTRAN_NATIVE_DOUBLE_SIZEOF="8"
export PAC_FORTRAN_NATIVE_DOUBLE_KIND=" 8"
export PAC_FORTRAN_NUM_INTEGER_KINDS="5"
export PAC_FC_ALL_REAL_KINDS_SIZEOF="{4,8}"
export PAC_FC_ALL_INTEGER_KINDS_SIZEOF="{1,2,4,8,16}"

CONFIGURE_ARGS += \
	--prefix=/usr \
	--docdir=/usr/share/doc/hdf5/ \
	--with-examplesdir=/usr/share/doc/hdf5/examples/ \
	--with-default-plugindir=/usr/lib/hdf5/lib/plugin/ \
	--disable-static \
	--disable-sharedlib-rpath \
	--enable-build-mode=production \
	--enable-hl \
	--enable-cxx \
	--enable-fortran \
	--disable-java \
	--with-pic \
	--with-zlib \
	--with-szlib

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		DESTDIR="$(PKG_INSTALL_DIR)" \
		all install
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/lib/
endef

define Package/hdf5/install
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

$(eval $(call BuildPackage,hdf5))
