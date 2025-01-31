#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-xml-libxml
PKG_VERSION:=2.0210
PKG_RELEASE:=1

PKG_SOURCE:=XML-LibXML-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/S/SH/SHLOMIF/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/XML-LibXML-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-alien-libxml2/host perl-alien-build/host libxml2/host perl-xml-sax/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/XML-LibXML-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-alien-libxml2/host perl-xml-libxml/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-xml-libxml
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl XML LibXML
  URL:=https://metacpan.org/dist/XML-LibXML
  DEPENDS:=perl +perl-xml-sax-base +perl-xml-namespacesupport +libxml2 +perl-xml-sax +perl-alien-libxml2
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

define Package/perl-xml-libxml/install
	$(call perlmod/Install,$(1),XML auto/XML)
endef

$(eval $(call BuildPackage,perl-xml-libxml))
$(eval $(call HostBuild))
