include $(TOPDIR)/rules.mk

PKG_NAME:=perl-crypt-eksblowfish
PKG_VERSION:=0.009
PKG_RELEASE:=1

PKG_SOURCE:=Crypt-Eksblowfish-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/Z/ZE/ZEFRAM/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Crypt-Eksblowfish-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-class-mix/host perl-module-build/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Crypt-Eksblowfish-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-class-mix/host perl-module-build/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-crypt-eksblowfish
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Crypt-Eksblowfish
  URL:=https://metacpan.org/dist/Crypt-Eksblowfish
  DEPENDS:=perl +perlbase-base +perl-class-mix
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

define Package/perl-crypt-eksblowfish/install
	$(call perlmod/Install,$(1),Crypt auto/Crypt)
endef

$(eval $(call BuildPackage,perl-crypt-eksblowfish))
$(eval $(call HostBuild))
