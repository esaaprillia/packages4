include $(TOPDIR)/rules.mk

PKG_NAME:=libxft
PKG_VERSION:=2.3.9
PKG_RELEASE:=1

PKG_SOURCE:=libXft-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libXft-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libXft-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=xorgproto/host util-macros/host libx11/host libxrender/host fontconfig/host freetype/host
PKG_BUILD_DEPENDS:=util-macros xorgproto
HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxft
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=FreeType-based font drawing library for X
	DEPENDS:=+fontconfig +libfreetype +libx11 +libxrender
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxft/description
	libXft - X FreeType library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--prefix=/usr

HOST_LDFLAGS += $(HOST_FPIC)

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--enable-shared \
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

define Package/libxft/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxft))
