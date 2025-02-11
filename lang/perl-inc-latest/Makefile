include $(TOPDIR)/rules.mk

PKG_NAME:=perl-inc-latest
PKG_VERSION:=0.500
PKG_RELEASE:=1

PKG_SOURCE:=inc-latest-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DA/DAGOLDEN/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/inc-latest-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/inc-latest-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-inc-latest
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl inc latest
  URL:=https://metacpan.org/dist/inc-latest
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

define Package/perl-inc-latest/install
	$(call perlmod/Install,$(1),inc)
endef

$(eval $(call BuildPackage,perl-inc-latest))
$(eval $(call HostBuild))
