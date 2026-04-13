#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-soap-lite
PKG_VERSION:=1.27
PKG_RELEASE:=1

PKG_SOURCE:=SOAP-Lite-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/P/PH/PHRED/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/SOAP-Lite-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/SOAP-Lite-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-soap-lite
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Client and server side SOAP implementation
  URL:=https://metacpan.org/dist/SOAP-Lite
  DEPENDS:=perl +perlbase-base +perl-class-inspector +perl-fcgi +perl-io-sessiondata +perl-io-socket-ssl +perl-http-daemon +perl-libwww +perl-mime-lite +perl-mime-tools +perl-uri +perl-task-weaken +perl-lwp-protocol-https +perl-xml-simple +perl-xml-parser
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

define Package/perl-soap-lite/install
	$(call perlmod/Install,$(1),Apache SOAP)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,perl-soap-lite))
$(eval $(call HostBuild))
