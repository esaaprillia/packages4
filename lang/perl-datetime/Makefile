#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-datetime
PKG_VERSION:=1.65
PKG_RELEASE:=1

PKG_SOURCE:=DateTime-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DR/DROLSKY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENCE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/DateTime-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/DateTime-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-datetime
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl DateTime
  URL:=https://metacpan.org/dist/DateTime
  DEPENDS:=perl +perlbase-base +perl-specio +perl-dist-checkconflicts +perl-datetime-locale +perl-namespace-autoclean +perl-try-tiny +perl-datetime-timezone +perl-params-validationcompiler
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

define Package/perl-datetime/install
	$(call perlmod/Install,$(1),DateTime.pm DateTime auto/DateTime)
endef

$(eval $(call BuildPackage,perl-datetime))
$(eval $(call HostBuild))
