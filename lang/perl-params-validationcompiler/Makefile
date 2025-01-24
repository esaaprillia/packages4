#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-params-validationcompiler
PKG_VERSION:=0.31
PKG_RELEASE:=1

PKG_SOURCE:=Params-ValidationCompiler-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Params-ValidationCompiler-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-exception-class/host perl-specio/host perl-test2-plugin-nowarnings/host perl-test-without-module/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Params-ValidationCompiler-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-exception-class/host perl-specio/host perl-test2-plugin-nowarnings/host perl-test-without-module/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-params-validationcompiler
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Params-ValidationCompiler
  URL:=https://metacpan.org/dist/Params-ValidationCompiler
  DEPENDS:=perl +perlbase-essential +perl-test2-plugin-nowarnings +perl-test-without-module +perl-test-simple +perl-specio +perl-role-tiny +perl-mro-compat +perl-exception-class +perl-term-table +perl-eval-closure
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

define Package/perl-params-validationcompiler/install
	$(call perlmod/Install,$(1),Params)
endef

$(eval $(call BuildPackage,perl-params-validationcompiler))
$(eval $(call HostBuild))
