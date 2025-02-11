include $(TOPDIR)/rules.mk

PKG_NAME:=perl-test-mockmodule
PKG_VERSION:=0.179.0
PKG_RELEASE:=1

PKG_SOURCE:=Test-MockModule-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/G/GF/GFRANKS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Test-MockModule-v$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-super/host perl-module-build/host perl-test-pod/host perl-test-pod-coverage/host perl-test-warnings/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Test-MockModule-v$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-super/host perl-module-build/host perl-test-pod/host perl-test-pod-coverage/host perl-test-warnings/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-test-mockmodule
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Test MockModule
  URL:=https://metacpan.org/dist/Test-MockModule
  DEPENDS:=perl +perlbase-base +perl-super +perl-module-build +perl-test-pod +perl-test-pod-coverage +perl-test-warnings
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

define Package/perl-test-mockmodule/install
	$(call perlmod/Install,$(1),Test)
endef

$(eval $(call BuildPackage,perl-test-mockmodule))
$(eval $(call HostBuild))
