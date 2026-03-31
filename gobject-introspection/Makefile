include $(TOPDIR)/rules.mk

PKG_NAME:=gobject-introspection
PKG_VERSION:=1.86.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/gobject-introspection/1.86/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING COPYING.GPL COPYING.LGPL

HOST_BUILD_DEPENDS:=glib2/host libffi/host meson/host python-rnc2rng/host
PKG_BUILD_DEPENDS:=python3 gobject-introspection/host

PYTHON3_PKG_BUILD:=0
PYTHON3_HOST_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/meson.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-host-build.mk

define Package/gobject-introspection
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Introspection system for GObject-based libraries
	DEPENDS:=+glib2 +libffi
	URL:=https://wiki.gnome.org/action/show/Projects/GObjectIntrospection
endef

define Package/gobject-introspection/description
	The goal of the project is to describe the APIs and collect them in a uniform, machine readable format.
endef

MESON_VARS += $(PYTHON3_VARS)

MESON_ARGS += \
	-Dcairo=disabled \
	-Dgtk_doc=false \
	-Dtests=false

MESON_HOST_ARGS += \
	-Dcairo=disabled \
	-Dgtk_doc=false \
	-Dtests=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/gobject-introspection-1.0 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/gobject-introspection $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/aclocal $(1)/usr/share/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gir-1.0 $(1)/usr/share/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gobject-introspection-1.0 $(1)/usr/share/
endef

define Package/gobject-introspection/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/girepository-1.0 $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gobject-introspection))
