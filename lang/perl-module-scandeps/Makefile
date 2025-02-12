include $(TOPDIR)/rules.mk

PKG_NAME:=perl-module-scandeps
PKG_VERSION:=1.37
PKG_RELEASE:=1

PKG_SOURCE:=Module-ScanDeps-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RS/RSCHUPP/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Module-ScanDeps-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-ipc-run3/host perl-test-requires/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Module-ScanDeps-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-ipc-run3/host perl-test-requires/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-module-scandeps
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Module ScanDeps
  URL:=https://metacpan.org/dist/Module-ScanDeps
  DEPENDS:=perl +perlbase-base +perl-ipc-run3 +perl-test-requires
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

define Package/perl-module-scandeps/install
	$(call perlmod/Install,$(1),Module)
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/scandeps.pl $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-module-scandeps))
$(eval $(call HostBuild))
