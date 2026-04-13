#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-module-build-tiny
PKG_VERSION:=0.052
PKG_RELEASE:=1

PKG_SOURCE:=Module-Build-Tiny-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/L/LE/LEONT/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Module-Build-Tiny-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-module-build/host perl-extutils-config/host perl-extutils-helpers/host perl-extutils-installpaths/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Module-Build-Tiny-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-module-build/host perl-extutils-config/host perl-extutils-helpers/host perl-extutils-installpaths/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-module-build-tiny
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A tiny replacement for Module::Build
  URL:=https://metacpan.org/dist/Module-Build-Tiny
  DEPENDS:=perl +perlbase-base +perl-extutils-config +perl-extutils-helpers +perl-extutils-installpaths
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

define Package/perl-module-build-tiny/install
	$(call perlmod/Install,$(1),Module)
endef

$(eval $(call BuildPackage,perl-module-build-tiny))
$(eval $(call HostBuild))
