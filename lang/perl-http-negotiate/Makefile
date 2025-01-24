#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-http-negotiate
PKG_VERSION:=6.01
PKG_RELEASE:=1

PKG_SOURCE:=HTTP-Negotiate-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/G/GA/GAAS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/HTTP-Negotiate-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/HTTP-Negotiate-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/perl/perlmod.mk

define Package/perl-http-negotiate
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl HTTP-Negotiate
  URL:=https://metacpan.org/dist/HTTP-Negotiate
  DEPENDS:=perl +perlbase-base +perl-http-message
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

define Package/perl-http-negotiate/install
	$(call perlmod/Install,$(1),HTTP)
endef

$(eval $(call BuildPackage,perl-http-negotiate))
$(eval $(call HostBuild))
