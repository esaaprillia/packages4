include $(TOPDIR)/rules.mk

PKG_NAME:=libopenmpt
PKG_VERSION:=0.8.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)+release.autotools.tar.gz
PKG_SOURCE_URL:=https://lib.openmpt.org/files/libopenmpt/src/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)+release.autotools
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libopenmpt
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=OpenMPT based module player library and libopenmpt based command-line player
	DEPENDS:=+flac +libogg +pulseaudio-daemon +libsndfile +libvorbis +mpg123 +portaudio +zlib
	URL:=https://lib.openmpt.org/libopenmpt/
endef

define Package/libopenmpt/description
	libopenmpt is a cross-platform C++ and C library to decode tracked music files (modules) [wikipedia] into a raw PCM audio stream.
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libopenmpt.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libopenmpt.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libopenmpt.pc
endef

define Package/libopenmpt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libopenmpt))
