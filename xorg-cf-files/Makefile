include $(TOPDIR)/rules.mk

PKG_NAME:=xorg-cf-files
PKG_VERSION:=1.0.9
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/archive/individual/util/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=font-util/host
PKG_BUILD_DEPENDS:=font-util/host

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/xorg-cf-files
	SECTION:=font
	CATEGORY:=Font
	TITLE:=Data files for the imake utility
	DEPENDS:=+font-util
	URL:=http://xorg.freedesktop.org/
endef

define Package/xorg-cf-files/description
	Data files for the imake utility
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/X11 \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xorg-cf-files))
$(eval $(call HostBuild))
