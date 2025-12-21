include $(TOPDIR)/rules.mk

PKG_NAME:=libsndfile
PKG_VERSION:=1.2.2
PKG_RELEASE:=2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/libsndfile/libsndfile/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libsndfile
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libsndfile is a C library for reading and writing files containing sampled audio data.
	DEPENDS:=+libstdcpp +alsa-lib +flac +lame-lib +libogg +libvorbis +libmpg123 +libopus
	URL:=https://github.com/libsndfile/libsndfile
endef

define Package/libsndfile/description
	A C library for reading and writing sound files containing sampled audio data.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_TESTING=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/sndfile.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/sndfile.pc
endef

define Package/libsndfile/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libsndfile))
