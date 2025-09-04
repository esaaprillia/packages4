#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=portaudio
PKG_VERSION:=19.7.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/PortAudio/portaudio/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/portaudio
  SECTION:=sound
  CATEGORY:=Sound
  DEPENDS:=+alsa-lib +libpthread +librt
  TITLE:=Portable cross-platform audio I/O
  URL:=http://www.portaudio.com/
endef

define Package/portaudio/description
 PortAudio is a free, cross-platform, open-source, audio I/O library.  It lets
 you write simple audio programs in 'C' or C++ that will compile and run on many
 platforms including Windows, Macintosh OS X, and Unix (OSS/ALSA). It is
 intended to promote the exchange of audio software between developers on
 different platforms. Many applications use PortAudio for Audio I/O.
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/portaudio*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/portaudio*.pc
endef

define Package/portaudio/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libportaudio.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,portaudio))
