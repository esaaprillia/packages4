#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-term-readline-gnu
PKG_VERSION:=1.47
PKG_RELEASE:=1

PKG_SOURCE:=Term-ReadLine-Gnu-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/H/HA/HAYASHI/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Term-ReadLine-Gnu-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Term-ReadLine-Gnu-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-term-readline-gnu
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=GNU Readline XS library wrapper
  URL:=https://metacpan.org/dist/Term-ReadLine-Gnu
  DEPENDS:=perl +perlbase-base +libreadline
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
	$(call perlmod/Configure,LIBS="-L$(STAGING_DIR)/usr/lib" INC="-I$(STAGING_DIR)/usr/include" LDDLFLAGS="-shared -rdynamic $(TARGET_LDFLAGS)",,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-term-readline-gnu/install
	$(call perlmod/Install,$(1),Term auto)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,perl-term-readline-gnu))
$(eval $(call HostBuild))
