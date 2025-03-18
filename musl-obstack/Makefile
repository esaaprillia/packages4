# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=libxfixes
PKG_VERSION:=6.0.1
PKG_RELEASE:=1

PKG_SOURCE:=libXfixes-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/libXfixes-$(PKG_VERSION)

PKG_INSTALL:=1

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/libxfixes
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libx11
  TITLE:=X11 miscellaneous *fixes* extension library
  URL:=https://www.x.org
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
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

$(eval $(call BuildPackage,libxfixes))
