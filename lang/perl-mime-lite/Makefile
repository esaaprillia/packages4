#
# Copyright (C) 2014, 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-mime-lite
PKG_VERSION:=3.033
PKG_RELEASE:=1

PKG_SOURCE:=MIME-Lite-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RJ/RJBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/MIME-Lite-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/MIME-Lite-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-mime-lite
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=low-calorie MIME generator
  URL:=https://metacpan.org/release/MIME-Lite
  DEPENDS:=perl +perlbase-base +perl-mime-types +perl-email-date-format +perl-mailtools +perl-test-pod-coverage
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

define Package/perl-mime-lite/install
	$(call perlmod/Install,$(1),MIME)
endef

$(eval $(call BuildPackage,perl-mime-lite))
$(eval $(call HostBuild))
