#
# Copyright (C) 2014, 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-time-hires
PKG_VERSION:=1.9764
PKG_RELEASE:=1

PKG_SOURCE:=Time-HiRes-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/A/AT/ATOOMIC/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Time-HiRes-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Time-HiRes-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-time-hires
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=High resolution alarm, sleep, gettimeofday, interval timers
  URL:=https://metacpan.org/release/Time-HiRes/
  DEPENDS:=perl +perlbase-base
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
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

define Package/perl-time-hires/install
	$(call perlmod/Install,$(1),Time auto/Time)
endef

$(eval $(call BuildPackage,perl-time-hires))
$(eval $(call HostBuild))
