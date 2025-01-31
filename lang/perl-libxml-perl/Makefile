#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-libxml-perl
PKG_VERSION:=0.08
PKG_RELEASE:=1

PKG_SOURCE:=libxml-perl-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/K/KM/KMACLEOD/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/libxml-perl-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-xml-parser/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/libxml-perl-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-xml-parser/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-libxml-perl
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl libxml-perl
  URL:=https://metacpan.org/dist/libxml-perl
  DEPENDS:=perl +perl-xml-parser
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

define Package/perl-libxml-perl/install
	$(call perlmod/Install,$(1),Data XML)
endef

$(eval $(call BuildPackage,perl-libxml-perl))
$(eval $(call HostBuild))
