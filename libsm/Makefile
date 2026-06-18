include $(TOPDIR)/rules.mk

PKG_NAME:=libsm
PKG_VERSION:=1.2.6
PKG_RELEASE:=1

PKG_SOURCE:=libSM-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libSM-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libSM-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host xtrans/host libice/host
PKG_BUILD_DEPENDS:=util-macros xorgproto xtrans

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libsm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 Session Management library
	DEPENDS:=+libice +libuuid
	URL:=http://xorg.freedesktop.org/
endef

define Package/libsm/description
	libSM - X Session Management Library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-docs \
	--without-xmlto \
	--without-xsltproc \
	--without-fop

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared \
	--disable-docs \
	--without-xmlto \
	--without-xsltproc \
	--without-fop

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

define Package/libsm/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libsm))
