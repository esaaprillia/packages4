#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-x10
PKG_VERSION:=0.04
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/R/RO/ROBF/
PKG_SOURCE:=X10-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/X10-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/X10-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-x10
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Manage X10 devices in Perl
  URL:=https://metacpan.org/dist/X10
  DEPENDS:=perl +perlbase-essential +perl-astro-suntime +perl-device-serialport +perl-time-modules
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

define Package/perl-x10/install
	$(call perlmod/Install,$(1),X10.pm X10)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-x10))
