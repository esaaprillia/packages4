include $(TOPDIR)/rules.mk

PKG_NAME:=perl-sub-identify
PKG_VERSION:=0.14
PKG_RELEASE:=1

PKG_SOURCE:=Sub-Identify-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RG/RGARCIA/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Sub-Identify-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-test-pod/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Sub-Identify-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-test-pod/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-sub-identify
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Sub Identify
  URL:=https://metacpan.org/dist/Sub-Identify
  DEPENDS:=perl +perlbase-base +perl-test-pod
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

define Package/perl-sub-identify/install
	$(call perlmod/Install,$(1),Sub auto/Sub)
endef

$(eval $(call BuildPackage,perl-sub-identify))
$(eval $(call HostBuild))
