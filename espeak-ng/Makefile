include $(TOPDIR)/rules.mk

PKG_NAME:=espeak-ng
PKG_VERSION:=1.52.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/espeak-ng/espeak-ng/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0 Apache-2.0 BSD-2-Clause License
PKG_LICENSE_FILES:=COPYING COPYING.APACHE COPYING.BSD2 COPYING.UCD

PKG_BUILD_DEPENDS:=espeak-ng/host
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/espeak-ng
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=eSpeak NG Text-to-Speech
	DEPENDS:=+pcaudiolib +sonic
	URL:=https://github.com/espeak-ng/espeak-ng
endef

define Package/espeak-ng/description
	eSpeak NG is an open source speech synthesizer that supports more than hundred languages and accents.
endef

HOST_CONFIGURE_ARGS += \
	--without-pcaudiolib \
	--without-mbrola \
	--without-sonic

CONFIGURE_ARGS += \
	--prefix=/usr \
	--with-pcaudiolib \
	--with-mbrola \
	--with-sonic

CONFIGURE_VARS += \
	ESPEAK_DATA_PATH="$(STAGING_DIR_HOSTPKG)/bin/espeak-ng"

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/espeak-ng \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/espeak-ng/install
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

$(eval $(call BuildPackage,espeak-ng))
$(eval $(call HostBuild))
