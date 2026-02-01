#
# Copyright (C) 2006-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=irssi
PKG_VERSION:=1.4.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/irssi/irssi/releases/download/$(PKG_VERSION)/
PKG_HASH:=72a951cb0ad622785a8962801f005a3a412736c7e7e3ce152f176287c52fe062

PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING
PKG_CPE_ID:=cpe:/a:irssi:irssi

PKG_INSTALL:=1
PKG_BUILD_DEPENDS:=meson/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(TOPDIR)/feeds/python/lang/python/meson/meson.mk
include $(TOPDIR)/feeds/python/lang/perl/perlver.mk

define Package/irssi
  SUBMENU:=Instant Messaging
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+glib2 +libncurses +libpthread +libopenssl +libotr +utf8proc +perl
  TITLE:=Console IRC client
  MAINTAINER:=Peter Wagner <tripolar@gmx.at>
  URL:=https://irssi.org/
endef

define Package/irssi/description
	Irssi is a terminal based IRC client for UNIX systems.
endef

PERL_SITELIB:=/usr/lib/perl$(PERL_MAJOR)/$(PERL_VERSION2)

TARGET_LDFLAGS += -Wl,--gc-sections -Wl,-rpath,$(PERL_SITELIB)/CORE -L$(STAGING_DIR)$(PERL_SITELIB)/CORE

MESON_ARGS += \
	-Dwith-perl=yes \
	-Dwith-perl-lib=$(PERL_SITELIB) \
	-Dwith-proxy=yes \
	-Dwith-otr=yes \
	-Denable-true-color=yes

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/irssi
	$(CP) $(PKG_INSTALL_DIR)/usr/include/irssi/* $(1)/usr/include/irssi/
endef

define Package/irssi/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/irssi $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/irssi $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/perl5 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/irssi $(1)/usr/share/
endef

$(eval $(call BuildPackage,irssi))
