#
# Copyright (C) 2014, 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-json-maybexs
PKG_VERSION:=1.004008
PKG_RELEASE:=1

PKG_SOURCE:=JSON-MaybeXS-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/E/ET/ETHER/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/JSON-MaybeXS-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/JSON-MaybeXS-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-json-maybexs
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Use L<Cpanel::JSON::XS> with a fallback to L<JSON::XS> and L<JSON::PP>
  URL:=https://metacpan.org/release/JSON-MaybeXS/
  DEPENDS:=perl +perlbase-base
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
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

define Package/perl-json-maybexs/install
	$(call perlmod/Install,$(1),JSON)
endef

$(eval $(call BuildPackage,perl-json-maybexs))
$(eval $(call HostBuild))
