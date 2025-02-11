include $(TOPDIR)/rules.mk

PKG_NAME:=perl-super
PKG_VERSION:=1.20190531
PKG_RELEASE:=1

PKG_SOURCE:=SUPER-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/C/CH/CHROMATIC/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/SUPER-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-sub-identify/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/SUPER-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-sub-identify/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-super
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl SUPER
  URL:=https://metacpan.org/dist/SUPER
  DEPENDS:=perl +perlbase-base +perl-sub-identify
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

define Package/perl-super/install
	$(call perlmod/Install,$(1),SUPER.pm)
endef

$(eval $(call BuildPackage,perl-super))
$(eval $(call HostBuild))
