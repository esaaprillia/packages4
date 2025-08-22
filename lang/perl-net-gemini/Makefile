#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-net-gemini
PKG_VERSION:=0.10
PKG_RELEASE:=1

PKG_SOURCE:=Net-Gemini-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/J/JM/JMATES/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Net-Gemini-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-module-build/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Net-Gemini-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-module-build/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-net-gemini
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Small Gemini client library
  URL:=https://metacpan.org/release/Net-Gemini/
  DEPENDS:=perl +perlbase-base +perl-cpanel-json-xs +perl-uri +perl-io-socket-ssl +perl-net-ssleay +perl-parse-mime +perl-file-slurper 
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

define Package/perl-net-gemini/install
	$(call perlmod/Install,$(1),Net)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/gmitool $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-net-gemini))
$(eval $(call HostBuild))
