include $(TOPDIR)/rules.mk

PKG_NAME:=gdk-pixbuf
PKG_VERSION:=2.44.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@GNOME/$(PKG_NAME)/$(basename $(PKG_VERSION))
PKG_HASH:=919f529512961a12e81cd4b4b466a48c3933469e7f9a310c6513cd4fb252ba3c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU LGPLv2.1
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=glib2/host shared-mime-info/host
PKG_BUILD_DEPENDS:=glib2/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/gdk-pixbuf
	SECTION:=xorg
	CATEGORY:=Xorg
	TITLE:=GTK image loading library
	DEPENDS:=+giflib +libtiff +libjpeg-turbo +libpng +glib2 +shared-mime-info
	URL:=https://www.gtk.org/
endef

define Package/gdk-pixbuf/description
	GdkPixbuf is a library that loads image data in various formats and stores
	it as linear buffers in memory. The buffers can then be scaled, composited, modified, saved, or rendered.
endef

MESON_HOST_ARGS += \
	-Dpng=disabled \
	-Dtiff=disabled \
	-Djpeg=disabled \
	-Dgif=disabled \
	-Ddocumentation=false \
	-Dglycin=disabled \
	-Dinstalled_tests=false \
	-Dman=false \
	-Dtests=false

MESON_ARGS += \
	-Ddocumentation=false \
	-Dglycin=disabled \
	-Dinstalled_tests=false \
	-Dman=false \
	-Dtests=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/gdk-pixbuf-2.0/gdk-pixbuf
	$(CP) $(PKG_INSTALL_DIR)/usr/include/gdk-pixbuf-2.0/gdk-pixbuf/*.h $(1)/usr/include/gdk-pixbuf-2.0/gdk-pixbuf/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.{so*,a} $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig
	$(foreach BIN,gdk_pixbuf_csource gdk_pixbuf_pixdata gdk_pixbuf_query_loaders,$(SED) 's/^$(BIN)=$$$${bindir}\/\(.*\)/$(BIN)=$$$${prefix_hostpkg}\/bin\/\1/' $(1)/usr/lib/pkgconfig/gdk-pixbuf-2.0.pc)
endef

define Package/gdk-pixbuf/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,gdk-pixbuf))
