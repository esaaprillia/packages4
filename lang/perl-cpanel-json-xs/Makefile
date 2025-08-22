#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-cpanel-json-xs
PKG_VERSION:=4.39
PKG_RELEASE:=1

PKG_SOURCE:=Cpanel-JSON-XS-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RU/RURBAN/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Cpanel-JSON-XS-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Cpanel-JSON-XS-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-cpanel-json-xs
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=cPanel fork of JSON::XS, fast and correct serializing
  URL:=https://metacpan.org/release/Cpanel-JSON-XS/
  DEPENDS:=perl +perlbase-base
endef

define Host/Configure
        $(call perlmod/host/Configure,,,)
endef

define Host/Compile
        $(call perlmod/host/Compile,,)
endef

define Host/Install
        $(call perlmod/host/Install,$(1),)
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-cpanel-json-xs/install
	$(call perlmod/Install,$(1),Cpanel auto/Cpanel)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/cpanel_json_xs $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-cpanel-json-xs))
$(eval $(call HostBuild))
