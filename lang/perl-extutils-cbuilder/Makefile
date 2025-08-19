#
# Copyright (C) 2014, 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-extutils-cbuilder
PKG_VERSION:=0.280224
PKG_RELEASE:=1

PKG_SOURCE:=ExtUtils-CBuilder-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/A/AM/AMBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/ExtUtils-CBuilder-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/ExtUtils-CBuilder-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-extutils-cbuilder
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Compile and link C code for Perl modules
  URL:=https://metacpan.org/dist/ExtUtils-CBuilder
  DEPENDS:=perl +perlbase-base +perlbase-config +perlbase-cwd +perlbase-data +perlbase-dynaloader +perlbase-errno +perlbase-essential +perlbase-fcntl +perlbase-file +perlbase-io +perlbase-ipc +perlbase-scalar +perlbase-storable +perlbase-symbol +perlbase-tie +perlbase-universal +perlbase-utf8
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

define Package/perl-extutils-cbuilder/install
	$(call perlmod/Install,$(1),DB* auto/DBI,DBI/W32ODBC.pm auto/DBI/*.h)
endef


$(eval $(call BuildPackage,perl-extutils-cbuilder))
$(eval $(call HostBuild))
