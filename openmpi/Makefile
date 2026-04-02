include $(TOPDIR)/rules.mk

PKG_NAME:=openmpi
PKG_VERSION:=5.0.10
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://download.open-mpi.org/release/open-mpi/v5.0/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND LicenseRef-MPICH
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/openmpi
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A High Performance Message Passing Library
	DEPENDS:=+INSTALL_GFORTRAN:libgfortran +libatomic +libhwloc +libevent2-core +libevent2-pthreads +zlib
	URL:=https://www.open-mpi.org/
endef

define Package/openmpi/description
The Open MPI Project is an open source Message Passing Interface implementation that is developed and maintained by a consortium of academic, research, and industry partners. Open MPI is therefore able to combine the expertise, technologies, and resources from all across the High Performance Computing community in order to build the best MPI library available. Open MPI offers advantages for system and software vendors, application developers and computer science researchers.
endef

export ompi_cv_fortran_abstract=yes
export ompi_cv_fortran_alignment_CHARACTER=1
export ompi_cv_fortran_alignment_COMPLEX=4
export ompi_cv_fortran_alignment_COMPLEXp16=8
export ompi_cv_fortran_alignment_COMPLEXp32=16
export ompi_cv_fortran_alignment_COMPLEXp8=4
export ompi_cv_fortran_alignment_DOUBLE_COMPLEX=8
export ompi_cv_fortran_alignment_DOUBLE_PRECISION=8
export ompi_cv_fortran_alignment_INTEGER=4
export ompi_cv_fortran_alignment_INTEGERp1=1
export ompi_cv_fortran_alignment_INTEGERp2=2
export ompi_cv_fortran_alignment_INTEGERp4=4
export ompi_cv_fortran_alignment_INTEGERp8=8
export ompi_cv_fortran_alignment_LOGICAL=4
export ompi_cv_fortran_alignment_LOGICALp1=1
export ompi_cv_fortran_alignment_LOGICALp2=2
export ompi_cv_fortran_alignment_LOGICALp4=4
export ompi_cv_fortran_alignment_LOGICALp8=8
export ompi_cv_fortran_alignment_REAL=4
export ompi_cv_fortran_alignment_REALp16=16
export ompi_cv_fortran_alignment_REALp4=4
export ompi_cv_fortran_alignment_REALp8=8
export ompi_cv_fortran_alignment_type_test_mpi_handle_=8
export ompi_cv_fortran_common_alignment=16
export ompi_cv_fortran_asynchronous=yes
export ompi_cv_fortran_c_funloc=yes
export ompi_cv_fortran_elemental=yes
#export ompi_cv_fortran_external_symbol='single underscore'
export ompi_cv_fortran_f08_assumed_rank=yes
export ompi_cv_fortran_handle_max=2147483647
export ompi_cv_fortran_have_CHARACTER=yes
export ompi_cv_fortran_have_COMPLEX=yes
export ompi_cv_fortran_have_COMPLEXp16=yes
export ompi_cv_fortran_have_COMPLEXp32=yes
export ompi_cv_fortran_have_COMPLEXp4=no
export ompi_cv_fortran_have_COMPLEXp8=yes
export ompi_cv_fortran_have_DOUBLE_COMPLEX=yes
export ompi_cv_fortran_have_DOUBLE_PRECISION=yes
export ompi_cv_fortran_have_INTEGER=yes
export ompi_cv_fortran_have_INTEGERp16=yes
export ompi_cv_fortran_have_INTEGERp1=yes
export ompi_cv_fortran_have_INTEGERp2=yes
export ompi_cv_fortran_have_INTEGERp4=yes
export ompi_cv_fortran_have_INTEGERp8=yes
export ompi_cv_fortran_have_LOGICAL=yes
export ompi_cv_fortran_have_LOGICALp1=yes
export ompi_cv_fortran_have_LOGICALp2=yes
export ompi_cv_fortran_have_LOGICALp4=yes
export ompi_cv_fortran_have_LOGICALp8=yes
export ompi_cv_fortran_have_REAL=yes
export ompi_cv_fortran_have_REALp16=yes
export ompi_cv_fortran_have_REALp2=no
export ompi_cv_fortran_have_REALp4=yes
export ompi_cv_fortran_have_REALp8=yes
export ompi_cv_fortran_have_bind_c_sub=yes
export ompi_cv_fortran_have_bind_c_type=yes
export ompi_cv_fortran_have_bind_c_type_name=yes
export ompi_cv_fortran_have_iso_c_binding=yes
export ompi_cv_fortran_have_iso_fortran_env=yes
export ompi_cv_fortran_have_iso_fortran_env_real16=no
export ompi_cv_fortran_have_storage_size=yes
export ompi_cv_fortran_ignore_tkr_data='1:type(*), dimension(*):!GCC$ ATTRIBUTES NO_ARG_CHECK ::'
export ompi_cv_fortran_interface=yes
export ompi_cv_fortran_kind_value_0=0
export ompi_cv_fortran_kind_value_C_DOUBLE=8
export ompi_cv_fortran_kind_value_C_DOUBLE_COMPLEX=8
export ompi_cv_fortran_kind_value_C_FLOAT=4
export ompi_cv_fortran_kind_value_C_FLOAT_COMPLEX=4
export ompi_cv_fortran_kind_value_C_INT16_T=2
export ompi_cv_fortran_kind_value_C_INT32_T=4
export ompi_cv_fortran_kind_value_C_INT64_T=8
export ompi_cv_fortran_kind_value_C_INT=4
export ompi_cv_fortran_kind_value_C_LONG_DOUBLE=16
export ompi_cv_fortran_kind_value_C_LONG_DOUBLE_COMPLEX=16
export ompi_cv_fortran_kind_value_C_LONG_LONG=8
export ompi_cv_fortran_kind_value_C_SHORT=2
export ompi_cv_fortran_kind_value_C_SIGNED_CHAR=1
export ompi_cv_fortran_logical_array_correct=yes
export ompi_cv_fortran_max_array_rank=15
export ompi_cv_fortran_module_include_flag=-I
export ompi_cv_fortran_optional=yes
export ompi_cv_fortran_private=yes
export ompi_cv_fortran_procedure=yes
export ompi_cv_fortran_sizeof_CHARACTER=1
export ompi_cv_fortran_sizeof_COMPLEX=8
export ompi_cv_fortran_sizeof_COMPLEXp16=16
export ompi_cv_fortran_sizeof_COMPLEXp32=32
export ompi_cv_fortran_sizeof_COMPLEXp8=8
export ompi_cv_fortran_sizeof_DOUBLE_COMPLEX=16
export ompi_cv_fortran_sizeof_DOUBLE_PRECISION=8
export ompi_cv_fortran_sizeof_INTEGER=4
export ompi_cv_fortran_sizeof_INTEGERp16=16
export ompi_cv_fortran_sizeof_INTEGERp1=1
export ompi_cv_fortran_sizeof_INTEGERp2=2
export ompi_cv_fortran_sizeof_INTEGERp4=4
export ompi_cv_fortran_sizeof_INTEGERp8=8
export ompi_cv_fortran_sizeof_LOGICAL=4
export ompi_cv_fortran_sizeof_LOGICALp1=1
export ompi_cv_fortran_sizeof_LOGICALp2=2
export ompi_cv_fortran_sizeof_LOGICALp4=4
export ompi_cv_fortran_sizeof_LOGICALp8=8
export ompi_cv_fortran_sizeof_REAL=4
export ompi_cv_fortran_sizeof_REALp16=16
export ompi_cv_fortran_sizeof_REALp4=4
export ompi_cv_fortran_sizeof_REALp8=8
export ompi_cv_fortran_sizeof_type_test_mpi_handle_=4
export ompi_cv_fortran_true_value=1
export ompi_cv_fortran_use_only=yes
export ompi_cv_real16_c_equiv=yes

CONFIGURE_ARGS += \
	$(if $(CONFIG_IPV6),--enable-ipv6,--disable-ipv6) \
	--sysconfdir=/etc/openmpi \
	--with-hwloc="$(STAGING_DIR)/usr" \
	--enable-script-wrapper-compilers \
	--disable-static

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/ompi_wrapper_script $(1)/usr/bin/
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/bin/ompi_wrapper_script
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/bin/ompi_wrapper_script
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpiCC
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpic++
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpicc
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpicxx
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpif77
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpif90
	$(LN) ../../usr/bin/ompi_wrapper_script $(2)/bin/mpifort
endef

define Package/openmpi/install
	$(INSTALL_DIR) $(1)/etc/openmpi
	$(CP) $(PKG_INSTALL_DIR)/etc/openmpi $(1)/etc/openmpi
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.mod $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/openmpi $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pmix $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
endef

$(eval $(call BuildPackage,openmpi))
