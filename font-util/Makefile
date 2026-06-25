include $(TOPDIR)/rules.mk

PKG_NAME:=font-util
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/font/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=util-macros/host
PKG_BUILD_DEPENDS:=util-macros

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/font-util
	SECTION:=font
	CATEGORY:=Font
	TITLE:=X.Org font utilities
	URL:=http://xorg.freedesktop.org/
endef

define Package/font-util/description
	X.Org font package creation/installation utilities
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{aclocal,fonts} \
	  $(1)/usr/share/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
	  $(1)/usr/lib/

	$(SED) \
		's,/usr,$$$${prefix},g; \
		 s,/usr/share,$$$${exec_prefix}/share,g' \
		 $(1)/usr/lib/pkgconfig/fontutil.pc

endef

define Package/font-util/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/{bdftruncate,ucs2any} \
	  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,font-util))
$(eval $(call HostBuild))
