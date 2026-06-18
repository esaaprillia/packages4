include $(TOPDIR)/rules.mk

PKG_NAME:=libxdmcp
PKG_VERSION:=1.1.5
PKG_RELEASE:=1

PKG_SOURCE:=libXdmcp-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=d8a5222828c3adab70adf69a5583f1d32eb5ece04304f7f8392b6a353aa2228c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/libXdmcp-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/libXdmcp-$(PKG_VERSION)

HOST_BUILD_DEPENDS:=util-macros/host xorgproto/host
PKG_BUILD_DEPENDS:=util-macros xorgproto

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/libxdmcp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X Display Manager Control Protocol library
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxdmcp/description
	libXdmcp - X Display Manager Control Protocol library
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-docs \
	--without-fop \
	--without-xmlto \
	--without-xsltproc

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--disable-shared \
	--disable-docs \
	--without-fop \
	--without-xmlto \
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

define Package/libxdmcp/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxdmcp))
