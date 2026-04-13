#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-soap-wsdl
PKG_VERSION:=3.004
PKG_RELEASE:=1

PKG_SOURCE:=SOAP-WSDL-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/S/SW/SWALTERS/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/SOAP-WSDL-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/SOAP-WSDL-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-soap-wsdl
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=SOAP with WSDL support
  URL:=https://metacpan.org/dist/SOAP-WSDL
  DEPENDS:=perl +perlbase-base +perl-class-load +perl-class-std-fast +perl-libwww +perl-template-toolkit +perl-xml-parser
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

define Package/perl-soap-wsdl/install
	$(call perlmod/Install,$(1),SOAP)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,perl-soap-wsdl))
$(eval $(call HostBuild))
