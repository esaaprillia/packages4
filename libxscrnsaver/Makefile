include $(TOPDIR)/rules.mk

PKG_NAME:=libxscrnsaver
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PKG_SOURCE:=libxscrnsaver-libXScrnSaver-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/xorg/lib/libxscrnsaver/-/archive/libXScrnSaver-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libxscrnsaver-libXScrnSaver-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libxscrnsaver-libXScrnSaver-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=xorgproto/host util-macros/host
PKG_BUILD_DEPENDS:=util-macros xorgproto
HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxscrnsaver
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Xlib-based X11 Screen Saver extension client library
	DEPENDS:=+libxext +libx11
	URL:=https://gitlab.freedesktop.org/xorg/lib/libxscrnsaver
endef

define Package/libxscrnsaver/description
	XScreenSaver - X11 Screen Saver extension client library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--prefix=/usr

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared \
	--enable-malloc0returnsnull

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

define Package/libxscrnsaver/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxscrnsaver))
