#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-test2-plugin-nowarnings
PKG_VERSION:=0.10
PKG_RELEASE:=1

PKG_SOURCE:=Test2-Plugin-NoWarnings-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Test2-Plugin-NoWarnings-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-test-simple/host perl-ipc-run3/host perl-module-pluggable/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Test2-Plugin-NoWarnings-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-test-simple/host perl-ipc-run3/host perl-module-pluggable/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-test2-plugin-nowarnings
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Test2-Plugin-NoWarnings
  URL:=https://metacpan.org/dist/Test2-Plugin-NoWarnings
  DEPENDS:=perl +perlbase-essential +perl-test-simple +perl-ipc-run3 +perl-module-pluggable
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

define Package/perl-test2-plugin-nowarnings/install
	$(call perlmod/Install,$(1),Test2)
endef

$(eval $(call BuildPackage,perl-test2-plugin-nowarnings))
$(eval $(call HostBuild))
