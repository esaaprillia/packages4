include $(TOPDIR)/rules.mk

PKG_NAME:=rohc
PKG_VERSION:=2.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://rohc-lib.org/download/rohc-2.3.x/2.3.1/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=cmocka libpcap
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/rohc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=RObust Header Compression (ROHC) library
	DEPENDS:=
	URL:=https://rohc-lib.org/
endef

define Package/rohc/description
The ROHC library provides an easy and robust way for applications to reduce their bandwidth usage on network links with limited capacity or expensive costs.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/rohc.pc $(1)/usr/lib/pkgconfig/rohc.pc
endef

define Package/cmocka/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,rohc))
