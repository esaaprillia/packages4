include $(TOPDIR)/rules.mk

PKG_NAME:=perl-data-optlist
PKG_VERSION:=0.114
PKG_RELEASE:=1

PKG_SOURCE:=Data-OptList-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RJ/RJBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Data-OptList-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-params-util/host perl-sub-install/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Data-OptList-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-params-util/host perl-sub-install/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-data-optlist
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Data OptList
  URL:=https://metacpan.org/release/Data-OptList
  DEPENDS:=perl +perlbase-base +perl-params-util +perlbase-scalar +perl-sub-install
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

define Package/perl-data-optlist/install
	$(call perlmod/Install,$(1),Data)
endef

$(eval $(call BuildPackage,perl-data-optlist))
$(eval $(call HostBuild))
