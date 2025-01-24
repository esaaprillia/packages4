#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-module-build
PKG_VERSION:=0.4234
PKG_RELEASE:=1

PKG_SOURCE:=Module-Build-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/L/LE/LEONT/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Module-Build-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Module-Build-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-module-build
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Module Build
  URL:=https://metacpan.org/dist/Module-Build
  DEPENDS:=perl +perlbase-essential
endef

define Host/Configure
        $(call perlmod/host/Configure,,,)
endef

define Host/Compile
        $(call perlmod/host/Compile,,)
endef

#define Host/Install
#        $(call perlmod/host/Install,$(1),)
#endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-module-build/install
	$(call perlmod/Install,$(1),Module)
endef

$(eval $(call BuildPackage,perl-module-build))
$(eval $(call HostBuild))
