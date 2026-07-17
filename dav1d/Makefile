include $(TOPDIR)/rules.mk

PKG_NAME:=dav1d
PKG_VERSION:=1.5.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://code.videolan.org/videolan/dav1d/-/archive/$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/dav1d
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=dav1d is the fastest AV1 decoder on all platforms
	DEPENDS:=+libstdcpp
	URL:=https://code.videolan.org/videolan/dav1d
endef

define Package/dav1d/description
	dav1d is an AV1 cross-platform decoder, open-source, and focused on speed and correctness.
endef

MESON_ARGS += \
	-Denable_tests=false \
	-Denable_tools=true \
	-Dfuzzing_engine=none \
	-Dtestdata_tests=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/dav1d.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/dav1d.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/dav1d.pc
endef

define Package/dav1d/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,dav1d))
