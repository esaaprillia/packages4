include $(TOPDIR)/rules.mk

PKG_NAME:=libzrtpcpp
PKG_VERSION:=4.7.0
PKG_RELEASE:=1

PKG_SOURCE:=ZRTPCPP-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/wernerd/ZRTPCPP/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/ZRTPCPP-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libzrtpcpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ Implementation of ZRTP protocol - GNU ZRTP C++
	DEPENDS:=+libstdcpp
	URL:=https://github.com/wernerd/ZRTPCPP
endef

define Package/libzrtpcpp/description
This package provides a library that adds ZRTP support to the GNU ccRTP stack and serves as library for other RTP stacks (PJSIP, GStreamer). Phil Zimmermann developed ZRTP to allow ad-hoc, easy to use key negotiation to setup Secure RTP (SRTP) sessions.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=YES

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libzrtpcpp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libzrtpcpp.pc
endef

define Package/libzrtpcpp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libzrtpcpp))
