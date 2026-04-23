include $(TOPDIR)/rules.mk

PKG_NAME:=orc
PKG_VERSION:=0.4.42
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://gstreamer.freedesktop.org/src/orc/
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk

define Package/orc
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Orc - Optimized Inner Loop Runtime Compiler
  URL:=https://gitlab.freedesktop.org/gstreamer/orc
  DEPENDS:=
endef

define Package/orc/description
  Orc is the successor to Liboil - The Library of Optimized Inner Loops.
endef

MESON_ARGS += \
	-Dorc-test=disabled \
	-Dbenchmarks=disabled \
	-Dtools=enabled

MESON_HOST_ARGS += \
	-Dorc-test=disabled \
	-Dbenchmarks=disabled \
	-Dtools=enabled

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/orc* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/orc*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/orc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,orc))
