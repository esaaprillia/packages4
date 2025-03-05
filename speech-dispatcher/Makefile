include $(TOPDIR)/rules.mk

PKG_NAME:=speech-dispatcher
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/brailcom/speechd/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0 GPL-3.0 LGPL-2.1
PKG_LICENSE_FILES:=COPYING.GPL-2 COPYING.GPL-3 COPYING.LGPL

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/speech-dispatcher
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Common high-level interface to speech synthesis
	DEPENDS:=+libintl-full +libiconv-full +libltdl +glib2 +dotconf +libsndfile +espeak-ng +libao +sonic +pulseaudio-daemon +alsa-lib
	URL:=https://github.com/brailcom/speechd
endef

define Package/speech-dispatcher/description
This is the Speech Dispatcher project (speech-dispatcher). It is a part of the Free(b)soft project, which is intended to allow blind and visually impaired people to work with computer and Internet based on free software.
Speech Dispatcher project provides a high-level device independent layer for access to speech synthesis through a simple, stable and well documented interface.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--libexecdir=/usr/lib/speech-dispatcher \
	--disable-static \
	--disable-doc \
	--disable-python \
	--without-kali \
	--without-ibmtts \
	--without-baratinoo \
	--without-voxin \
	--without-flite

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/speech-dispatcher \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	
	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/speech-dispatcher.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/speech-dispatcher.pc
endef

define Package/speech-dispatcher/install
	$(INSTALL_DIR) \
	  $(1)/etc \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/etc/speech-dispatcher \
	  $(1)/etc/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{speech-dispatcher,*.so*} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,speech-dispatcher))
