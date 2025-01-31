#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-alien-libxml2
PKG_VERSION:=0.19
PKG_RELEASE:=1

PKG_SOURCE:=Alien-Libxml2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Alien-Libxml2-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host libxml2/host perl-alien-build/host perl-alien-build-plugin-download-gitlab/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Alien-Libxml2-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-alien-build/host perl-alien-build-plugin-download-gitlab/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-alien-libxml2
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Alien Libxml2
  URL:=https://metacpan.org/dist/Alien-Libxml2
  DEPENDS:=perl +perlbase-base +perl-alien-build +libxml2
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

define Package/perl-alien-libxml2/install
	$(call perlmod/Install,$(1),Alien auto/Alien auto/share)
endef

$(eval $(call BuildPackage,perl-alien-libxml2))
$(eval $(call HostBuild))
