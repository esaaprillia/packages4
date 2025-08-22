#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-extutils-pkgconfig
PKG_VERSION:=1.16
PKG_RELEASE:=1

PKG_SOURCE:=ExtUtils-PkgConfig-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/X/XA/XAOC/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/ExtUtils-PkgConfig-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/ExtUtils-PkgConfig-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-extutils-pkgconfig
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl ExtUtils PkgConfig
  URL:=https://metacpan.org/release/ExtUtils-PkgConfig
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

define Package/perl-extutils-pkgconfig/install
	$(call perlmod/Install,$(1),ExtUtils)
endef


$(eval $(call BuildPackage,perl-extutils-pkgconfig))
$(eval $(call HostBuild))