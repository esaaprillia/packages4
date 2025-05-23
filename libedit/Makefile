#
# Copyright (C) 2016-2018 CZ.NIC, z.s.p.o. <knot-dns@labs.nic.cz>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

VERSION:=3.1
RELEASE_DATE:=20240808

PKG_NAME:=libedit
PKG_VERSION:=$(RELEASE_DATE).$(VERSION)
PKG_RELEASE:=1

PKG_MAINTAINER:=Daniel Salzman <daniel.salzman@nic.cz>
PKG_LICENSE:=BSD-3-Clause

PKG_SOURCE:=$(PKG_NAME)-$(RELEASE_DATE)-$(VERSION).tar.gz
PKG_SOURCE_URL:=https://thrysoee.dk/editline/
PKG_HASH:=5f0573349d77c4a48967191cdd6634dd7aa5f6398c6a57fe037cc02696d6099f

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(RELEASE_DATE)-$(VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)-$(RELEASE_DATE)-$(VERSION)

HOST_BUILD_DEPENDS:=ncurses/host
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/libedit
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=BSD editline and history library
	URL:=http://thrysoee.dk/editline/
	DEPENDS:=+libncurses
endef

define Package/libedit/description
	Generic line editing, history, and tokenization functions similar to GNU Readline.
endef

define Build/InstallDev
	$(INSTALL_DIR)						$(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h		$(1)/usr/include/

	$(INSTALL_DIR)						$(1)/usr/include/editline
	$(CP) $(PKG_INSTALL_DIR)/usr/include/editline/*.h	$(1)/usr/include/editline/
	
	$(INSTALL_DIR)						$(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libedit.{a,so*}	$(1)/usr/lib/

	$(INSTALL_DIR)						$(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libedit.pc	$(1)/usr/lib/pkgconfig
endef

define Package/libedit/install
	$(INSTALL_DIR)					$(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libedit.so.*	$(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libedit))
