#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-params-validate
PKG_VERSION:=1.31
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/D/DR/DROLSKY/
PKG_SOURCE:=Params-Validate-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Params-Validate-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-module-build/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Params-Validate-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-module-build/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-params-validate
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Validate sub params against a spec
  URL:=https://search.cpan.org/dist/Params-Validate
  DEPENDS:=perl +perlbase-essential +perlbase-module
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

define Package/perl-params-validate/install
	$(call perlmod/Install,$(1),Params auto/Params)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-params-validate))
