#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-specio
PKG_VERSION:=0.48
PKG_RELEASE:=1

PKG_SOURCE:=Specio-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Specio-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-devel-stacktrace/host perl-test-needs/host perl-sub-quote/host perl-role-tiny/host perl-mro-compat/host perl-try-tiny/host perl-test-fatal/host perl-eval-closure/host perl-xstring/host perl-module-runtime/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Specio-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-devel-stacktrace/host perl-test-needs/host perl-sub-quote/host perl-role-tiny/host perl-mro-compat/host perl-try-tiny/host perl-test-fatal/host perl-eval-closure/host perl-xstring/host perl-module-runtime/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-specio
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Specio
  URL:=https://metacpan.org/dist/Specio
  DEPENDS:=perl +perlbase-essential +perl-sub-quote +perl-devel-stacktrace +perl-role-tiny +perl-mro-compat +perl-try-tiny +perl-test-fatal +perl-eval-closure +perl-module-runtime +perl-test-needs +perl-xstring
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

define Package/perl-specio/install
	$(call perlmod/Install,$(1),Specio.pm Specio Test)
endef

$(eval $(call BuildPackage,perl-specio))
$(eval $(call HostBuild))
