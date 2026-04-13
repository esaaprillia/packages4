#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-template-toolkit
PKG_VERSION:=3.102
PKG_RELEASE:=1

PKG_SOURCE:=Template-Toolkit-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/T/TO/TODDR/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Template-Toolkit-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Template-Toolkit-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-template-toolkit
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl template processing system
  URL:=https://metacpan.org/dist/Template-Toolkit
  DEPENDS:=perl +perlbase-essential +perl-appconfig
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

MOD_CFLAGS_PERL += $(FPIC)

define Build/Configure
	$(call perlmod/Configure,,TT_ACCEPT=y,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-template-toolkit/install
	$(call perlmod/Install,$(1),Template.pm Template auto)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,perl-template-toolkit))
$(eval $(call HostBuild))
