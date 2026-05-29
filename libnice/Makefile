include $(TOPDIR)/rules.mk

PKG_NAME:=libnice
PKG_VERSION:=0.1.23
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://libnice.freedesktop.org/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPLv2.1
PKG_LICENSE_FILES:=COPYING COPYING.LGPL COPYING.MPL

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/libnice
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GLib ICE implementation
	DEPENDS:=+gstreamer1 +libgnutls +glib2
	URL:=https://libnice.freedesktop.org/
endef

define Package/libnice/description
	GLib based Interactive Connectivity Establishment (ICE) implementation (RFC 5245)
endef

MESON_ARGS += \
	-Dgtk_doc=disabled \
	-Dtests=disabled \
	-Dexamples=disabled \
	-Dintrospection=disabled \
	-Dcrypto-library=gnutls \
	-Dgstreamer=enabled \
	-Dgupnp=disabled

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/nice.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libnice/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/gstreamer-1.0
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/gstreamer-1.0/*.so* $(1)/usr/lib/gstreamer-1.0/
endef

$(eval $(call BuildPackage,libnice))
