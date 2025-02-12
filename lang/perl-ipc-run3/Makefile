#
# Copyright (C) 2014 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-ipc-run3
PKG_VERSION:=0.048
PKG_RELEASE:=1

PKG_SOURCE:=IPC-Run3-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RJ/RJBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/IPC-Run3-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-ipc-run3/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/IPC-Run3-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-ipc-run3/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/mosdns/perl/perlmod.mk

define Package/perl-ipc-run3
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl IPC Run3
  URL:=https://metacpan.org/dist/IPC-Run3
  DEPENDS:=perl +perlbase-essential
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

define Package/perl-ipc-run3/install
	$(call perlmod/Install,$(1),IPC)
endef

$(eval $(call BuildPackage,perl-ipc-run3))
$(eval $(call HostBuild))