include $(TOPDIR)/rules.mk

PKG_NAME:=perl-devel-callchecker
PKG_VERSION:=0.009
PKG_RELEASE:=1

PKG_SOURCE:=Devel-CallChecker-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/Z/ZE/ZEFRAM/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Devel-CallChecker-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-module-build/host perl-test-pod/host perl-test-pod-coverage/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Devel-CallChecker-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-module-build/host perl-test-pod/host perl-test-pod-coverage/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-devel-callchecker
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Devel-CallChecker
  URL:=https://metacpan.org/dist/Devel-CallChecker
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

define Package/perl-devel-callchecker/install
	$(call perlmod/Install,$(1),Devel auto/Devel)
endef

$(eval $(call BuildPackage,perl-devel-callchecker))
$(eval $(call HostBuild))
