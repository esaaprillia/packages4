include $(TOPDIR)/rules.mk

PKG_NAME:=gsm
PKG_VERSION:=1.0.24
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.quut.com/gsm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=TU-Berlin-2.0
PKG_LICENSE_FILES:=COPYRIGHT

PKG_BUILD_DIR:=$(BUILD_DIR)/gsm-1.0-pl24

include $(INCLUDE_DIR)/package.mk

define Package/gsm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GSM 06.10 lossy speech compression
	DEPENDS:=
	URL:=https://www.quut.com/gsm/
endef

define Package/gsm/description
	GSM 06.10 lossy speech compression
endef

define Build/Compile
	$(MAKE_VARS) $(MAKE) LDFLAGS="$(TARGET_LDFLAGS)" CFLAGS="$(TARGET_CFLAGS)" CC="$(TARGET_CC)" LD="$(TARGET_CC)" -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS)
endef

define Build/Install
	$(MAKE_VARS) $(MAKE) INSTALL_ROOT=$(PKG_INSTALL_DIR) GSM_INSTALL_INC=/usr/include/gsm GSM_INSTALL_LIB=/usr/lib -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_INSTALL_FLAGS)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/gsm $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

define Package/gsm/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,gsm))
