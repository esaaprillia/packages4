#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-http-cookies
PKG_VERSION:=6.08
PKG_RELEASE:=1

PKG_SOURCE:=HTTP-Cookies-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/O/OA/OALDERS
PKG_HASH:=49ebb73576eb41063c04bc079477df094496deec805ae033f3be338c23c3af59

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/HTTP-Cookies-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/HTTP-Cookies-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-http-cookies
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=HTTP cookie jars
  URL:=https://search.cpan.org/dist/HTTP-Cookies/
  DEPENDS:=perl +perl-http-date +perl-http-message +perlbase-essential +perlbase-time
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

define Package/perl-http-cookies/install
        $(call perlmod/Install,$(1),HTTP auto/HTTP)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-http-cookies))
