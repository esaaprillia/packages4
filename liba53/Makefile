include $(TOPDIR)/rules.mk

PKG_NAME:=liba53
PKG_VERSION:=4.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/RangeNetworks/liba53/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/liba53
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A5/3 Call Encryption Library
	DEPENDS:=+libstdcpp
	URL:=https://github.com/RangeNetworks/liba53/
endef

define Package/liba53/description
	A5/3 Call Encryption Library
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) \
		CXX=$(TARGET_CXX)
endef

define Build/Install
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/include
	$(CP) $(PKG_BUILD_DIR)/a53.h $(PKG_INSTALL_DIR)/usr/include/
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/lib
	$(CP) $(PKG_BUILD_DIR)/*.so* $(PKG_INSTALL_DIR)/usr/lib/
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/a53.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

define Package/liba53/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,liba53))
