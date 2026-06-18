include $(TOPDIR)/rules.mk

PKG_NAME:=xtrans
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.x.org/releases/individual/lib/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=util-macros/host
PKG_BUILD_DEPENDS:=util-macros

HOST_BUILD_PARALLEL:=1
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/xtrans
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=X transport library
	URL:=http://xorg.freedesktop.org/
	BUILDONLY:=1
endef

define Package/xtrans/description
	xtrans is a library of code that is shared among various X packages to handle
	network protocol transport in a modular fashion, allowing a single place to add new transport types.
	It is used by the X server, libX11, libICE, the X font server, and related components.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/X11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/pkgconfig \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/aclocal \
	  $(1)/usr/share/
endef

define Host/Install
	$(call Host/Install/Default)
	$(INSTALL_DIR) \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig

	$(CP) \
	  $(HOST_BUILD_DIR)/xtrans.pc \
	  $(STAGING_DIR_HOSTPKG)/lib/pkgconfig/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,xtrans))
