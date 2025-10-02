include $(TOPDIR)/rules.mk

PKG_NAME:=openmpi
PKG_VERSION:=5.0.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://download.open-mpi.org/release/open-mpi/v5.0/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause AND LicenseRef-MPICH
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/openmpi
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A High Performance Message Passing Library
	DEPENDS:=+libhwloc +libevent2-core +libevent2-pthreads
	URL:=https://www.open-mpi.org/
endef

define Package/openmpi/description
The Open MPI Project is an open source Message Passing Interface implementation that is developed and maintained by a consortium of academic, research, and industry partners. Open MPI is therefore able to combine the expertise, technologies, and resources from all across the High Performance Computing community in order to build the best MPI library available. Open MPI offers advantages for system and software vendors, application developers and computer science researchers.
endef

CONFIGURE_VARS += \
	FC=aarch64-openwrt-linux-musl-gfortran

CONFIGURE_ARGS += \
	--enable-ipv6 \
	--with-hwloc=/usr
	--disable-static

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

define Package/openmpi/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/etc

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/etc/openmpi \
	  $(1)/etc/
endef

$(eval $(call BuildPackage,openmpi))
