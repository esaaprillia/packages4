#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-crypt-ssleay
PKG_VERSION:=0.72
PKG_RELEASE:=1

PKG_SOURCE:=Crypt-SSLeay-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/N/NA/NANIS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Crypt-SSLeay-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Crypt-SSLeay-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-path-class/host perl-try-tiny/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-crypt-ssleay
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Crypt-SSLeay
  URL:=https://metacpan.org/dist/Crypt-SSLeay
  DEPENDS:=perl +perl-lwp-protocol-https +perl-path-class +perl-try-tiny +libopenssl
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

define Package/perl-crypt-ssleay/install
	$(call perlmod/Install,$(1),Crypt Net auto/Crypt)
endef

$(eval $(call BuildPackage,perl-crypt-ssleay))
$(eval $(call HostBuild))
