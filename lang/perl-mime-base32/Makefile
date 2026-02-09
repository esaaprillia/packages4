#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-mime-base32
PKG_VERSION:=1.303
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/R/RE/REHSACK/
PKG_SOURCE:=MIME-Base32-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/MIME-Base32-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/MIME-Base32-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-mime-base32
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Base32 encoder / decoder
  URL:=https://metacpan.org/dist/MIME-Base32
  DEPENDS:=perl +perlbase-encode +perlbase-essential
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

define Package/perl-mime-base32/install
	$(call perlmod/Install,$(1),MIME)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-mime-base32))
