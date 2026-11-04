include $(TOPDIR)/rules.mk

PKG_NAME:=libiec61883
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.kernel.org/pub/linux/libs/ieee1394/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libiec61883
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A higher level API for streaming DV, MPEG-2 and audio over Linux IEEE 1394
	DEPENDS:=+libstdcpp +libraw1394
	URL:=https://www.kernel.org/pub/linux/libs/ieee1394/
endef

define Package/libiec61883/description
	libiec61883 library provides a higher-level API for streaming digital video (DV), MPEG-2, and audio/music data over Linux IEEE 1394 (FireWire) devices.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libiec61883.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libiec61883/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libiec61883))
