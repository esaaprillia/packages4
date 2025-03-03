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

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=espeak-ng/host
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

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

CMAKE_HOST_OPTIONS += \
	-DBUILD_SHARED_LIBS=OFF \
	-DESPEAK_COMPAT=OFF \
	-DESPEAK_BUILD_MANPAGES=OFF \
	-DUSE_MBROLA=OFF \
	-DUSE_LIBSONIC=OFF \
	-DUSE_LIBPCAUDIO=OFF

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DESPEAK_COMPAT=ON \
	-DESPEAK_BUILD_MANPAGES=OFF \
	-DUSE_MBROLA=ON \
	-DUSE_LIBSONIC=ON \
	-DUSE_LIBPCAUDIO=ON \
	-DESPEAK_DATA_PATH="$(STAGING_DIR_HOSTPKG)/bin/espeak-ng"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/espeak-ng.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/espeak-ng.pc
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
