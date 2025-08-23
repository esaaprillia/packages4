#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-object-event
PKG_VERSION:=1.23
PKG_RELEASE:=1

PKG_SOURCE:=Object-Event-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/E/EL/ELMEX/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Object-Event-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Object-Event-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-object-event
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl event callback interface
  URL:=https://metacpan.org/release/Object-Event/
  DEPENDS:=perl +perlbase-base +perl-anyevent +perl-common-sense
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

define Package/perl-object-event/install
	$(call perlmod/Install,$(1),Object)
endef

$(eval $(call BuildPackage,perl-object-event))
$(eval $(call HostBuild))
