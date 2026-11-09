include $(TOPDIR)/rules.mk

PKG_NAME:=librsvg
PKG_VERSION:=2.63.4
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@GNOME/$(PKG_NAME)/$(basename $(PKG_VERSION))
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING.LIB

PKG_BUILD_DEPENDS:=glib2/host cargo-c/host vala/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/rust/rust-values.mk
include $(INCLUDE_DIR)/meson.mk

define Package/librsvg
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=SAX-based renderer for SVG files into a GdkPixbuf
	DEPENDS:=$(RUST_ARCH_DEPENDS) +dav1d +fontconfig +libcairo +libfreetype +gdk-pixbuf +glib2 +harfbuzz +libxml2 +libpango
	URL:=https://gitlab.gnome.org/GNOME/librsvg
endef

define Package/librsvg/description
	This is librsvg - A small library to render Scalable Vector Graphics (SVG), associated with the GNOME Project.
	It renders SVG files to Cairo surfaces.  Cairo is the 2D, antialiased drawing library that GNOME uses to draw things to the screen or to generate output for printing.
endef

MESON_VARS += $(CARGO_PKG_CONFIG_VARS)

MESON_ARGS += \
	-Dintrospection=disabled \
	-Dpixbuf-loader=disabled \
	-Ddocs=disabled \
	-Dtests=false \
	-Davif=enabled \
	-Dtriplet=$(RUSTC_TARGET_ARCH)

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
endef

define Package/librsvg/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/rsvg-convert $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,librsvg))
