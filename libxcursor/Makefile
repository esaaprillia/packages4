include $(TOPDIR)/rules.mk

PKG_NAME:=libxcursor
PKG_VERSION:=1.2.3
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib/
PKG_SOURCE:=libXcursor-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXcursor-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=xorgproto util-macros
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxcursor
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X Cursor management library
	DEPENDS:=+libx11 +libxrender +libxfixes
	URL:=https://gitlab.freedesktop.org/xorg/lib/libxcursor
endef

define Package/libxcursor/description
	libXcursor - X Window System Cursor management library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

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

define Package/libxcursor/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxcursor))

