include $(TOPDIR)/rules.mk

PKG_NAME:=libva
PKG_VERSION:=2.24.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/intel/libva/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libva
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Video Acceleration (VA) API for Linux
	DEPENDS:=+libdrm
	URL:=https://github.com/intel/libva/
endef

define Package/libva/description
	VA-API is an open-source library and API specification, which provides access to graphics hardware acceleration capabilities for video processing.
	It consists of a main library and driver-specific acceleration backends for each supported hardware vendor.
endef

MESON_ARGS += \
	-Dwith_x11=no \
	-Dwith_glx=no \
	-Dwith_wayland=no \
	-Dwith_win32=no \
	-Denable_docs=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include 
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libva*.pc $(1)/usr/lib/pkgconfig/
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libva*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libva*.pc
endef

define Package/libva/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libva))
