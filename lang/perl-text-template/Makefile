include $(TOPDIR)/rules.mk

PKG_NAME:=perl-text-template
PKG_VERSION:=1.61
PKG_RELEASE:=1

PKG_SOURCE:=Text-Template-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MS/MSCHOUT/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Text-Template-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-test-more-utf8/host perl-test-warnings/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Text-Template-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-test-more-utf8/host perl-test-warnings/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-text-template
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Text Template
  URL:=https://metacpan.org/dist/Text-Template
  DEPENDS:=perl +perlbase-base +perl-test-more-utf8 +perl-test-warnings
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

define Package/perl-text-template/install
	$(call perlmod/Install,$(1),Text)
endef

$(eval $(call BuildPackage,perl-text-template))
$(eval $(call HostBuild))
