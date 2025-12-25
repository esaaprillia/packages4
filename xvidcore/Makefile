include $(TOPDIR)/rules.mk

PKG_NAME:=xvidcore
PKG_VERSION:=1.3.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://downloads.xvid.com/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/xvidcore

PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/xvidcore
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=XviD is an open source MPEG-4 video codec
	DEPENDS:=+libstdcpp
	URL:=https://www.xvid.com/
endef

define Package/xvidcore/description
	The free video codec that's strong in compression and quality.
endef

MAKE_PATH:=build/generic
CONFIGURE_PATH:=build/generic

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-assembly

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

define Package/xvidcore/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xvidcore))
