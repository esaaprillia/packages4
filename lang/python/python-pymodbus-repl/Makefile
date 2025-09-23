#
# Copyright (C) 2013 
#                           
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=crosstool-ng
PKG_VERSION:=1.25.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=http://crosstool-ng.org/download/crosstool-ng/
PKG_HASH:=skip

PKG_INSTALL:=1
PKG_MAINTAINER:=

include $(INCLUDE_DIR)/package.mk

define Package/crosstool-ng
  SECTION:=net
  CATEGORY:=Network
  TITLE:=CPU ONLY CCminer Verushash2.2
  URL:=https://github.com/monkins1010/ccminer
  DEPENDS:= \
	  +libc
endef

define Package/crosstool-ng/description
ARM CPU ONLY CCminer Verushash2.2
endef

CONFIGURE_ARGS+= \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info

define Package/crosstool-ng/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/ccminer $(1)/usr/bin/
endef

$(eval $(call BuildPackage,crosstool-ng))