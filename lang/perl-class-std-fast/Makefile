#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-class-std-fast
PKG_VERSION:=0.0.8
PKG_RELEASE:=1

PKG_SOURCE:=Class-Std-Fast-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/A/AC/ACID/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Class-Std-Fast-v$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Class-Std-Fast-v$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-class-std-fast
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=This module provides a faster but less secure version of Class::Std
  URL:=https://metacpan.org/dist/Class-Std-Fast
  DEPENDS:=perl +perlbase-base +perl-class-std
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

define Package/perl-class-std-fast/install
	$(call perlmod/Install,$(1),Class)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-class-std-fast))
