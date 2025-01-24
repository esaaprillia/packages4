#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-libwww
PKG_VERSION:=6.77
PKG_RELEASE:=1

PKG_SOURCE:=libwww-perl-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/O/OA/OALDERS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/libwww-perl-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/libwww-perl-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/perl/perlmod.mk

define Package/perl-libwww
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl libwww-perl
  URL:=https://metacpan.org/dist/libwww-perl
  DEPENDS:=perl +perl-http-date +perl-http-cookies +perl-net-http +perl-html-parser +perl-file-listing +perl-www-robotrules +perl-http-negotiate +perl-uri +perl-http-message +perl-lwp-mediatypes +perl-encode-locale +perl-try-tiny
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

define Package/perl-libwww/install
	$(call perlmod/Install,$(1),LWP.pm LWP)
endef

$(eval $(call BuildPackage,perl-libwww))
$(eval $(call HostBuild))
