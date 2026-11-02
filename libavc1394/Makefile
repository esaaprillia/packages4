include $(TOPDIR)/rules.mk

PKG_NAME:=libavc1394
PKG_VERSION:=0.5.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://downloads.sourceforge.net/project/libavc1394/libavc1394/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libavc1394
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Library to control A/V devices using the 1394 TA AV/C commands
	DEPENDS:=+libstdcpp +libraw1394
	URL:=https://sourceforge.net/projects/libavc1394/
endef

define Package/libavc1394/description
	libavc1394 is a programming interface for the 1394 Trade Association AV/C (Audio/Video Control) Digital Interface Command Set.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libavc1394.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libavc1394/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libavc1394))
