#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-http-cookiejar
PKG_VERSION:=0.014
PKG_RELEASE:=1

PKG_SOURCE:=HTTP-CookieJar-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/D/DA/DAGOLDEN/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/HTTP-CookieJar-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/HTTP-CookieJar-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-http-cookiejar
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A minimalist HTTP user agent cookie jar
  URL:=http://search.cpan.org/dist/HTTP-CookieJar
  DEPENDS:=perl +perl-http-date +perl-http-message
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

define Package/perl-http-cookiejar/install
    $(call perlmod/Install,$(1),HTTP)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-http-cookiejar))
