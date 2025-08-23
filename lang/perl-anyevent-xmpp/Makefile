#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-anyevent-xmpp
PKG_VERSION:=0.55
PKG_RELEASE:=1

PKG_SOURCE:=AnyEvent-XMPP-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MS/MSTPLBG/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/AnyEvent-XMPP-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/AnyEvent-XMPP-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-anyevent-xmpp
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=AnyEvent implementation of the XMPP Protocol
  URL:=https://metacpan.org/release/AnyEvent-XMPP/
  DEPENDS:=perl +perlbase-base +perl-anyevent +perl-authen-sasl +perl-net-libidn +perl-net-ssleay +perl-object-event +perl-xml-parser +perl-xml-twig +perl-xml-writer
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

define Package/perl-anyevent-xmpp/install
	$(call perlmod/Install,$(1),AnyEvent)
endef

$(eval $(call BuildPackage,perl-anyevent-xmpp))
$(eval $(call HostBuild))
