include $(TOPDIR)/rules.mk

PKG_NAME:=flite
PKG_VERSION:=2.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/festvox/flite/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/flite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A small fast portable speech synthesis system
	DEPENDS:=+alsa-lib
	URL:=https://github.com/festvox/flite
endef

define Package/flite/description
	Flite is an open source small fast run-time text to speech engine. It is the latest addition to the suite of free software synthesis tools including University of Edinburgh's Festival Speech Synthesis System and Carnegie Mellon University's FestVox project, tools, scripts and documentation for building synthetic voices. However, flite itself does not require either of these systems to compile and run.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--with-audio=alsa

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/flite \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/flite/install
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

$(eval $(call BuildPackage,flite))
