#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=perl-geoip
PKG_VERSION:=1.51
PKG_RELEASE:=1

PKG_SOURCE:=geoip-api-perl-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/maxmind/geoip-api-perl/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/geoip-api-perl-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/geoip-api-perl-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-geoip
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=DEPRECATED GeoIP Legacy Perl API
  URL:=https://github.com/maxmind/geoip-api-perl
  DEPENDS:=perl +perlbase-base +geoip
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
	$(call perlmod/Configure,LIBS="-L$(STAGING_DIR)/usr/lib" INC="-I$(STAGING_DIR)/usr/include",,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-geoip/install
	$(call perlmod/Install,$(1),Geo auto)
endef

$(eval $(call BuildPackage,perl-geoip))
$(eval $(call HostBuild))
