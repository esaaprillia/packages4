#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-ldap
PKG_VERSION:=0.68
PKG_RELEASE:=1

PKG_SOURCE:=perl-ldap-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MA/MARSCHAP/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/perl-ldap-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/perl-ldap-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-ldap
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=LDAP client library
  URL:=https://metacpan.org/release/perl-ldap/
  DEPENDS:=perl +perlbase-base +perl-libwww +perl-lwp-mediatypes +perl-json +perl-convert-asn1 +perl-http-message +perl-uri +perl-http-negotiate +perl-io-socket-ssl
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

define Package/perl-ldap/install
	$(call perlmod/Install,$(1),Bundle LWP Net)
endef

$(eval $(call BuildPackage,perl-ldap))
$(eval $(call HostBuild))
