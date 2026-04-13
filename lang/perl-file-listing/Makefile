#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-file-listing
PKG_VERSION:=6.16
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/P/PL/PLICEASE/
PKG_SOURCE:=File-Listing-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/File-Listing-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/File-Listing-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-file-listing
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parse directory listing
  URL:=http://search.cpan.org/dist/File-Listing/
  DEPENDS:=perl +perl-http-date +perlbase-essential
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

define Package/perl-file-listing/install
	$(call perlmod/Install,$(1),File auto/File)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-file-listing))
