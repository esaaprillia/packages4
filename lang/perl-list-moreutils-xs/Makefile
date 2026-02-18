#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-list-moreutils-xs
PKG_VERSION:=0.430
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/R/RE/REHSACK/
PKG_SOURCE:=List-MoreUtils-XS-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/List-MoreUtils-XS-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/List-MoreUtils-XS-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-list-moreutils-xs
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Provide the stuff missing in List::Util
  URL:=https://search.cpan.org/dist/List-MoreUtils-XS
  DEPENDS:=perl +perlbase-essential
endef

define Host/Configure
	$(call perlmod/host/Configure,,)
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

define Package/perl-list-moreutils-xs/install
	$(call perlmod/Install,$(1),List auto/List)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-list-moreutils-xs))
