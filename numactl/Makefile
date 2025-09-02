include $(TOPDIR)/rules.mk

PKG_NAME:=numactl
PKG_VERSION:=2.0.19
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/numactl/numactl/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE.GPL2 LICENSE.GPL2.1

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/numactl
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Simple NUMA policy support
	DEPENDS:=+libatomic
	URL:=https://github.com/numactl/numactl
endef

define Package/numactl/description
Simple NUMA policy support. It consists of a numactl program to run other programs with a specific NUMA policy and a libnuma shared library ("NUMA API") to set NUMA policy in applications.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib \
	  $(1)/usr/include

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,*.a} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/numa.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/numa.pc
endef

define Package/numactl/install
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

$(eval $(call BuildPackage,numactl))
