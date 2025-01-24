#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-exception-class
PKG_VERSION:=1.45
PKG_RELEASE:=1

PKG_SOURCE:=Exception-Class-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Exception-Class-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-devel-stacktrace/host perl-class-data-inheritable/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Exception-Class-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-devel-stacktrace/host perl-class-data-inheritable/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-exception-class
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Exception-Class
  URL:=https://metacpan.org/dist/Exception-Class
  DEPENDS:=perl +perlbase-essential +perl-devel-stacktrace +perl-class-data-inheritable
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

define Package/perl-exception-class/install
	$(call perlmod/Install,$(1),Exception)
endef

$(eval $(call BuildPackage,perl-exception-class))
$(eval $(call HostBuild))
