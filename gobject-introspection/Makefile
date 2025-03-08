include $(TOPDIR)/rules.mk

PKG_NAME:=gobject-introspection
PKG_VERSION:=1.82.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/1.82
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING COPYING.GPL COPYING.LGPL

HOST_BUILD_DEPENDS:=glib2/host pcre2/host libffi/host meson-python/host
PKG_BUILD_DEPENDS:=python3 meson-python/host

PYTHON3_PKG_BUILD:=0
PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1

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

MESON_HOST_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false

MESON_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false \
	-Dbuild_introspection_data=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/* \
	  $(1)/usr/share/
endef

define Package/gobject-introspection/install
	$$(call Py3Package/ProcessFilespec,$(1),$(PKG_INSTALL_DIR),$$(1))
	$(FIND) $$(1) -name '*.exe' -delete
	$$(call Python3/CompileAll,$$(1))
	$$(call Python3/DeleteSourceFiles,$$(1))
	$$(call Python3/DeleteEmptyDirs,$$(1))
	$$(call Python3/FixShebang,$$(1)/usr/bin/*)
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

$(eval $(call BuildPackage,gobject-introspection))
$(eval $(call HostBuild))
