#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-devel-checklib
PKG_VERSION:=1.16
PKG_RELEASE:=1

PKG_SOURCE:=Devel-CheckLib-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MA/MATTN/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Devel-CheckLib-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-capture-tiny/host perl-mock-config/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Devel-CheckLib-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-capture-tiny/host perl-mock-config/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/perl/perlmod.mk

define Package/perl-devel-checklib
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Devel CheckLib
  URL:=https://metacpan.org/dist/Devel-CheckLib
  DEPENDS:=perl +perlbase-essential +perl-capture-tiny +perl-mock-config
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

define Package/perl-devel-checklib/install
	$(call perlmod/Install,$(1),Devel)
endef

$(eval $(call BuildPackage,perl-devel-checklib))
$(eval $(call HostBuild))
