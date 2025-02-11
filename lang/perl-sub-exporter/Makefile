include $(TOPDIR)/rules.mk

PKG_NAME:=perl-sub-exporter
PKG_VERSION:=0.991
PKG_RELEASE:=1

PKG_SOURCE:=Sub-Exporter-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RJ/RJBS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Sub-Exporter-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-data-optlist/host perl-params-util/host perl-sub-install/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Sub-Exporter-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-data-optlist/host perl-params-util/host perl-sub-install/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-sub-exporter
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Sub Exporter
  URL:=https://metacpan.org/dist/Sub-Exporter
  DEPENDS:=perl +perlbase-base +perl-data-optlist +perl-params-util +perl-sub-install
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

define Package/perl-sub-exporter/install
	$(call perlmod/Install,$(1),Sub)
endef

$(eval $(call BuildPackage,perl-sub-exporter))
$(eval $(call HostBuild))
