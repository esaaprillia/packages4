include $(TOPDIR)/rules.mk

PKG_NAME:=gobject-introspection
PKG_VERSION:=1.82.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/gobject-introspection/1.82/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING COPYING.GPL COPYING.LGPL

HOST_BUILD_DEPENDS:=glib2/host libffi/host meson/host python-rnc2rng/host python-mako/host
PKG_BUILD_DEPENDS:=python3 gobject-introspection/host

HOST_PATCH_DIR := ./patches-host

PYTHON3_PKG_BUILD:=0
PYTHON3_HOST_BUILD:=0
MESON_USE_STAGING_PYTHON:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

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
	-Dextra_library_paths="$(STAGING_DIR_HOSTPKG)/lib" \
	-Dgi_cross_use_prebuilt_gi=true \
	-Dgi_cross_binary_wrapper="$(STAGING_DIR_HOSTPKG)/bin/g-ir-compiler" \
	-Dgi_cross_ldd_wrapper="$(STAGING_DIR_HOSTPKG)/bin/g-ir-scanner"

MESON_HOST_ARGS += \
	-Dcairo=disabled \
	-Dgtk_doc=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/gobject-introspection-1.0 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/gobject-introspection $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/gobject-introspection*.pc $(1)/usr/lib/pkgconfig/
	$(foreach BIN,g_ir_scanner g_ir_compiler g_ir_generate,$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(1)/usr/lib/pkgconfig/gobject-introspection-1.0.pc)
	$(foreach BIN,g_ir_scanner g_ir_compiler g_ir_generate,$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(1)/usr/lib/pkgconfig/gobject-introspection-no-export-1.0.pc)
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/aclocal $(1)/usr/share/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gir-1.0 $(1)/usr/share/
	$(CP) $(PKG_INSTALL_DIR)/usr/share/gobject-introspection-1.0 $(1)/usr/share/
endef

define Package/gobject-introspection/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gobject-introspection))
