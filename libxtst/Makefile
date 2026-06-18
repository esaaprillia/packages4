include $(TOPDIR)/rules.mk

PKG_NAME:=libxtst
PKG_VERSION:=1.2.5
PKG_RELEASE:=1

PKG_SOURCE:=libXtst-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11 License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/libXtst-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libxtst
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Xlib-based library for XTEST & RECORD extensions
	DEPENDS:=+libx11 +libxext +libxi +libxfixes
	URL:=https://xorg.freedesktop.org/
endef

define Package/libxtst/description
	libXtst provides the Xlib-based client API for the XTEST & RECORD extensions.
	The XTEST extension is a minimal set of client and server extensions required to completely test the X11 server with no user intervention.
	This extension is not intended to support general journaling and playback of user actions.
	The RECORD extension supports the recording and reporting of all core X protocol and arbitrary X extension protocol.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--without-xmlto \
	--without-fop \
	--without-xsltproc

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

define Package/libxtst/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libxtst))
