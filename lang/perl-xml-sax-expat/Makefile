#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-xml-sax-expat
PKG_VERSION:=0.51
PKG_RELEASE:=1

PKG_SOURCE:=XML-SAX-Expat-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/B/BJ/BJOERN/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/XML-SAX-Expat-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-xml-sax-expat/host perl-xml-namespacesupport/host perl-xml-parser/host perl-xml-sax/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/XML-SAX-Expat-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-xml-sax-expat/host perl-xml-namespacesupport/host perl-xml-parser/host perl-xml-sax/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-xml-sax-expat
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl XML-SAX-Expat
  URL:=https://metacpan.org/dist/XML-SAX-Expat
  DEPENDS:=perl +perlbase-essential +perl-xml-namespacesupport +perl-xml-parser +perl-xml-sax
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

define Package/perl-xml-sax-expat/install
	$(call perlmod/Install,$(1),XML/SAX/Expat.pm)
endef

$(eval $(call BuildPackage,perl-xml-sax-expat))
$(eval $(call HostBuild))
