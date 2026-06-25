include $(TOPDIR)/rules.mk

PKG_NAME:=libxt
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_SOURCE:=libXt-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXt-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=util-macros xorgproto

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxt
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 toolkit intrinsics library
	DEPENDS:=+libice +libsm +libx11
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxt/description
	libXt - X Toolkit Intrinsics library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_VARS += \
	LDFLAGS_FOR_BUILD="$(HOST_LDFLAGS)" \
	CPPFLAGS_FOR_BUILD="$(HOST_CPPFLAGS)" \
	CFLAGS_FOR_BUILD="$(HOST_CFLAGS)" \
	CC_FOR_BUILD="$(HOSTCC)"

CONFIGURE_ARGS += \
	--enable-malloc0returnsnull \
	--with-appdefaultdir=/etc/X11/app-defaults \
	--disable-specs \
	--prefix=/usr \
	--without-xmlto \
	--without-xsltproc\
	--without-fop

# We can't use the default, as the default passes $(MAKE_ARGS), which
# overrides CC, CFLAGS, etc. and defeats the *_FOR_BUILD definitions
# passed in CONFIGURE_VARS
define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

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

define Package/libxt/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxt))
