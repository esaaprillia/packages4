include $(TOPDIR)/rules.mk

PKG_NAME:=perl-test-pod-coverage
PKG_VERSION:=1.10
PKG_RELEASE:=1

PKG_SOURCE:=Test-Pod-Coverage-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/N/NE/NEILB/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Test-Pod-Coverage-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-pod-coverage/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Test-Pod-Coverage-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-pod-coverage/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-test-pod-coverage
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Test Pod Coverage
  URL:=https://metacpan.org/dist/Test-Pod-Coverage
  DEPENDS:=perl +perlbase-base +perl-pod-coverage
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

define Package/perl-test-pod-coverage/install
	$(call perlmod/Install,$(1),Test)
endef

$(eval $(call BuildPackage,perl-test-pod-coverage))
$(eval $(call HostBuild))
