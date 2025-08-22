#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-anyevent
PKG_VERSION:=7.17
PKG_RELEASE:=1

PKG_SOURCE:=AnyEvent-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/ML/MLEHMANN/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/AnyEvent-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-canary-stability/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/AnyEvent-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-canary-stability/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-anyevent
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Framework for event-based programming
  URL:=https://metacpan.org/release/AnyEvent/
  DEPENDS:=perl +perlbase-base +perl-net-ssleay
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

define Package/perl-anyevent/install
	$(call perlmod/Install,$(1),AE.pm AnyEvent.pm AnyEvent)
endef

$(eval $(call BuildPackage,perl-anyevent))
$(eval $(call HostBuild))
