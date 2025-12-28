include $(TOPDIR)/rules.mk

PKG_NAME:=ladspa
PKG_VERSION:=1.17
PKG_RELEASE:=1

PKG_SOURCE:=ladspa_sdk_$(PKG_VERSION).tgz
PKG_SOURCE_URL:=http://www.ladspa.org/download/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/ladspa_sdk_$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/ladspa
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Linux Audio Developer's Simple Plugin API (LADSPA)
	DEPENDS:=+libstdcpp +libsndfile
	URL:=https://www.ladspa.org/
endef

define Package/ladspa/description
	LADSPA is a standard that allows software audio processors and effects to be plugged into a wide range of audio synthesis and recording packages.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)/src \
		CC="$(TARGET_CC)" \
		CPP="$(TARGET_CXX)" \
		LD="$(TARGET_LD)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		INSTALL_PLUGINS_DIR="$(PKG_INSTALL_DIR)/usr/lib/ladspa" \
		INSTALL_INCLUDE_DIR="$(PKG_INSTALL_DIR)/usr/include" \
		INSTALL_BINARY_DIR="$(PKG_INSTALL_DIR)/usr/bin" install
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
endef

define Package/ladspa/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ladspa $(1)/usr/lib/
endef

$(eval $(call BuildPackage,ladspa))
