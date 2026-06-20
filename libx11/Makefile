include $(TOPDIR)/rules.mk

PKG_NAME:=libx11
PKG_VERSION:=1.8.13
PKG_RELEASE:=1

PKG_SOURCE:=libX11-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 1-Clause License
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libX11-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libX11-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=xtrans/host xorgproto/host util-macros/host libxcb/host
PKG_BUILD_DEPENDS:=xtrans xorgproto util-macros

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libx11
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 client-side library
	DEPENDS:=+libxcb
	URL:=http://xorg.freedesktop.org/
endef

define Package/libx11/description
	libX11 - Core X11 protocol client library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_VARS += \
	LDFLAGS_FOR_BUILD="$(HOST_LDFLAGS)" \
	CPPFLAGS_FOR_BUILD="$(HOST_CPPFLAGS)" \
	CFLAGS_FOR_BUILD="$(HOST_CFLAGS)" \
	CC_FOR_BUILD="$(HOSTCC)"

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-malloc0returnsnull \
	--without-xmlto \
	--without-xsltproc

HOST_LDFLAGS += $(HOST_FPIC)

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared \
	--enable-malloc0returnsnull \
	--without-xmlto \
	--without-xsltproc

# We can't use the default, as the default passes $(MAKE_ARGS), which
# overrides CC, CFLAGS, etc. and defeats the *_FOR_BUILD definitions
# passed in CONFIGURE_VARS
define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/X11 \
	  $(1)/usr/share/
endef

define Package/libx11/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_DIR) \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig

	$(CP) \
	  $(HOST_BUILD_DIR)/*.pc \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libx11))
