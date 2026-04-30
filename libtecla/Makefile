include $(TOPDIR)/rules.mk

PKG_NAME:=libtecla
PKG_VERSION:=1.6.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://sites.astro.caltech.edu/~mcs/tecla/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=X11
PKG_LICENSE_FILES:=LICENSE.TERMS

include $(INCLUDE_DIR)/package.mk

define Package/libtecla
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The Tecla command-line editing library.
	DEPENDS:=+libncurses
	URL:=https://sites.astro.caltech.edu/~mcs/tecla/
endef

define Package/libtecla/description
The tecla library provides UNIX and LINUX programs with interactive command line editing facilities, similar to those of the UNIX tcsh shell.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libtecla.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

define Package/libtecla/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libtecla))
