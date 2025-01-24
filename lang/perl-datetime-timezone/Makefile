#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-datetime-timezone
PKG_VERSION:=2.63
PKG_RELEASE:=1

PKG_SOURCE:=DateTime-TimeZone-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENCE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/DateTime-TimeZone-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/DateTime-TimeZone-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-datetime-timezone
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl DateTime-TimeZone
  URL:=https://metacpan.org/dist/DateTime-TimeZone
  DEPENDS:=perl +perlbase-base +perl-specio +perl-class-singleton +perl-module-runtime +perl-params-validationcompiler +perl-try-tiny +perl-namespace-autoclean
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

define Package/perl-datetime-timezone/install
	$(call perlmod/Install,$(1),DateTime)
endef

$(eval $(call BuildPackage,perl-datetime-timezone))
$(eval $(call HostBuild))
