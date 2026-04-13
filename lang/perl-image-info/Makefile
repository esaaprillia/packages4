#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-image-info
PKG_VERSION:=1.45
PKG_RELEASE:=1

PKG_SOURCE:=Image-Info-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/authors/id/S/SR/SREZIC/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Image-Info-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Image-Info-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-image-info
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extract meta information from image files
  URL:=https://metacpan.org/dist/Image-Info
  DEPENDS:=perl +perlbase-base
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

define Package/perl-image-info/install
	$(call perlmod/Install,$(1),Bundle Image)
endef

$(eval $(call BuildPackage,perl-image-info))
$(eval $(call HostBuild))
