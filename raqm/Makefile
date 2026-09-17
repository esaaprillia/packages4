include $(TOPDIR)/rules.mk

PKG_NAME:=raqm
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/HOST-Oman/libraqm/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/raqm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A library for complex text layout
	DEPENDS:=+libfreetype +fribidi +harfbuzz
	URL:=https://github.com/HOST-Oman/libraqm/
endef

define Package/raqm/description
	Raqm is a small library that encapsulates the logic for complex text layout and provides a convenient API.
endef

MESON_ARGS += \
	-Dtests=false \
	-Ddocs=false

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/raqm.pc $(1)/usr/lib/pkgconfig/
endef

define Package/raqm/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,raqm))
