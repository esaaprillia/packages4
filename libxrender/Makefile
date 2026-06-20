include $(TOPDIR)/rules.mk

PKG_NAME:=libxrender
PKG_VERSION:=0.9.12
PKG_RELEASE:=1

PKG_SOURCE:=libXrender-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libXrender-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libXrender-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host libx11/host
PKG_BUILD_DEPENDS:=util-macros xorgproto

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxrender
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X Rendering Extension client library
	DEPENDS:=+libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxrender/description
	libXrender - library for the Render Extension to the X11 protocol
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--prefix=/usr

HOST_LDFLAGS += $(HOST_FPIC)

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

define Package/libxrender/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxrender))
