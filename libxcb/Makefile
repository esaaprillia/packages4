include $(TOPDIR)/rules.mk

PKG_NAME:=libxcb
PKG_VERSION:=1.17.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://xcb.freedesktop.org/dist/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=xcb-proto/host libxau/host libxdmcp/host
PKG_BUILD_DEPENDS:=xcb-proto

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PYTHON3_PKG_BUILD:=0
PYTHON3_HOST_BUILD:=0
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/python3-host-build.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/libxcb
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X11 client-side library
	DEPENDS:=+libxau +libxdmcp
	URL:=http://xorg.freedesktop.org/
endef

define Package/libxcb/description
	C interface to the X Window System protocol, which replaces the traditional Xlib interface.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_VARS += \
	PYTHON="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

HOST_CONFIGURE_VARS += \
	PYTHON="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-xkb \
	--enable-xinput \
	--without-doxygen \
	--disable-devel-docs

HOST_CONFIGURE_ARGS += \
	--enable-static \
	--enable-shared \
	--without-doxygen \
	--disable-devel-docs

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/xcb \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libxcb/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libxcb))
