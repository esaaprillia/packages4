include $(TOPDIR)/rules.mk

PKG_NAME:=perl-data-section
PKG_VERSION:=0.200008
PKG_RELEASE:=1

PKG_SOURCE:=Data-Section-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RJ/RJBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Data-Section-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-mro-compat/host perl-test-failwarnings/host perl-sub-exporter/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Data-Section-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-mro-compat/host perl-test-failwarnings/host perl-sub-exporter/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-data-section
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Data Section
  URL:=https://metacpan.org/dist/Data-Section
  DEPENDS:=perl +perlbase-base +perl-mro-compat +perl-test-failwarnings +perl-sub-exporter
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

define Package/perl-data-section/install
	$(call perlmod/Install,$(1),Data)
endef

$(eval $(call BuildPackage,perl-data-section))
$(eval $(call HostBuild))
