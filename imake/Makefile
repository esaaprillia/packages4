include $(TOPDIR)/rules.mk

PKG_NAME:=imake
PKG_VERSION:=1.0.11
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/archive/individual/util/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=font-util/host util-macros/host xorgproto/host
PKG_BUILD_DEPENDS:=font-util/host util-macros/host xorgproto/host

PKG_FIXUP:=autoreconf
HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/imake
	SECTION:=font
	CATEGORY:=Font
	TITLE:=X.Org font utilities
	URL:=http://xorg.freedesktop.org/
endef

define Package/imake/description
	X.Org imake program and related utilities
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Package/imake/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,imake))
$(eval $(call HostBuild))
