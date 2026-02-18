#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-task-weaken
PKG_VERSION:=1.06
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://www.cpan.org/authors/id/E/ET/ETHER/
PKG_SOURCE:=Task-Weaken-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Task-Weaken-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Task-Weaken-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-task-weaken
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ensure that a platform has weaken support
  URL:=https://metacpan.org/release/Task-Weaken/
  DEPENDS:=perl +perlbase-essential
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

define Package/perl-task-weaken/install
	$(call perlmod/Install,$(1),Task)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-task-weaken))
