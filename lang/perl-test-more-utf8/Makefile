include $(TOPDIR)/rules.mk

PKG_NAME:=perl-test-more-utf8
PKG_VERSION:=0.05
PKG_RELEASE:=1

PKG_SOURCE:=Test-More-UTF8-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MO/MONS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Test-More-UTF8-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Test-More-UTF8-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-test-more-utf8
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Test More UTF8
  URL:=https://metacpan.org/dist/Test-More-UTF8
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

define Package/perl-test-more-utf8/install
	$(call perlmod/Install,$(1),Test)
endef

$(eval $(call BuildPackage,perl-test-more-utf8))
$(eval $(call HostBuild))
