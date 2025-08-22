#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-alien-build-plugin-download-gitlab
PKG_VERSION:=0.01
PKG_RELEASE:=1

PKG_SOURCE:=Alien-Build-Plugin-Download-GitLab-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/P/PL/PLICEASE/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Alien-Build-Plugin-Download-GitLab-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-alien-build/host perl-path-tiny/host perl-uri/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Alien-Build-Plugin-Download-GitLab-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-alien-build/host perl-path-tiny/host perl-uri/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-alien-build-plugin-download-gitlab
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Alien Build Plugin Download GitLab
  URL:=https://metacpan.org/dist/Alien-Build-Plugin-Download-GitLab
  DEPENDS:=perl +perl-alien-build +perl-path-tiny +perl-uri
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

define Package/perl-alien-build-plugin-download-gitlab/install
	$(call perlmod/Install,$(1),Alien)
endef

$(eval $(call BuildPackage,perl-alien-build-plugin-download-gitlab))
$(eval $(call HostBuild))
