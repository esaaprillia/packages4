include $(TOPDIR)/rules.mk

PKG_NAME:=libxau
PKG_VERSION:=1.0.12
PKG_RELEASE:=1

PKG_SOURCE:=libXau-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libXau-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libXau-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host
PKG_BUILD_DEPENDS:=util-macros xorgproto

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxau
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 authorisation library
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxau/description
	Functions for handling Xauthority files and entries.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

HOST_CFLAGS += $(HOST_FPIC)

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxau/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxau))
