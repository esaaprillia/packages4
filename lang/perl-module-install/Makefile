include $(TOPDIR)/rules.mk

PKG_NAME:=perl-module-install
PKG_VERSION:=1.21
PKG_RELEASE:=1

PKG_SOURCE:=Module-Install-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/E/ET/ETHER/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Module-Install-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-file-remove/host perl-json/host perl-module-build/host perl-module-scandeps/host perl-par-dist/host perl-yaml-tiny/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Module-Install-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-file-remove/host perl-json/host perl-module-build/host perl-module-scandeps/host perl-par-dist/host perl-yaml-tiny/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-module-install
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Module Install
  URL:=https://metacpan.org/dist/Module-Install
  DEPENDS:=perl +perlbase-base +perl-file-remove +perl-json +perl-module-build +perl-module-scandeps +perl-par-dist +perl-yaml-tiny
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

define Package/perl-module-install/install
	$(call perlmod/Install,$(1),Module inc)
endef

$(eval $(call BuildPackage,perl-module-install))
$(eval $(call HostBuild))
