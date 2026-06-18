include $(TOPDIR)/rules.mk

PKG_NAME:=libxfixes
PKG_VERSION:=6.0.2
PKG_RELEASE:=1

PKG_SOURCE:=libXfixes-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libXfixes-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libXfixes-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host libx11/host
PKG_BUILD_DEPENDS:=util-macros xorgproto

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxfixes
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 miscellaneous 'fixes' extension library
	DEPENDS:=+libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxfixes/description
	libXfixes - XFIXES Extension library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

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

define Package/libxfixes/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxfixes))
