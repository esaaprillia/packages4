#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-extutils-helpers
PKG_VERSION:=0.028
PKG_RELEASE:=1

PKG_SOURCE:=ExtUtils-Helpers-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/L/LE/LEONT/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/ExtUtils-Helpers-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/ExtUtils-Helpers-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-extutils-helpers
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ExtUtils::Helpers - Various portability utilities for module builders
  URL:=https://metacpan.org/dist/ExtUtils-Helpers
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

define Package/perl-extutils-helpers/install
	$(call perlmod/Install,$(1),ExtUtils)
endef

$(eval $(call BuildPackage,perl-extutils-helpers))
$(eval $(call HostBuild))
