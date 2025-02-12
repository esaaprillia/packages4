include $(TOPDIR)/rules.mk

PKG_NAME:=perl-params-classify
PKG_VERSION:=0.015
PKG_RELEASE:=1

PKG_SOURCE:=Params-Classify-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/Z/ZE/ZEFRAM/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Params-Classify-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-module-build/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Params-Classify-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-module-build/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod-build.mk

define Package/perl-params-classify
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Params-Classify
  URL:=https://metacpan.org/dist/Params-Classify
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

define Package/perl-params-classify/install
	$(call perlmod/Install,$(1),Params auto/Params)
endef

$(eval $(call BuildPackage,perl-params-classify))
$(eval $(call HostBuild))
