include $(TOPDIR)/rules.mk

PKG_NAME:=ucx
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/openucx/ucx/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

CFLAGS+= -D_GNU_SOURCE

include $(INCLUDE_DIR)/package.mk

define Package/ucx
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Unified Communication X
	DEPENDS:=+libstdcpp +binutils +zlib +libzstd
	URL:=http://www.openucx.org/
endef

define Package/ucx/description
	Unified Communication X (UCX) is an award winning, optimized production proven-communication framework for modern, high-bandwidth and low-latency networks.
endef

#TARGET_CFLAGS+= -D_GNU_SOURCE

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/ucx*.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/ucx*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/ucx*.pc
endef

define Package/ucx/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/ucx $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ucx $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ucx))
