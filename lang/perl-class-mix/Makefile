include $(TOPDIR)/rules.mk

PKG_NAME:=perl-class-mix
PKG_VERSION:=0.006
PKG_RELEASE:=1

PKG_SOURCE:=Class-Mix-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/Z/ZE/ZEFRAM/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Class-Mix-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-params-classify/host perl-module-build/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Class-Mix-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-params-classify/host perl-module-build/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-class-mix
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Class-Mix
  URL:=https://metacpan.org/dist/Class-Mix
  DEPENDS:=perl +perlbase-base +perl-params-classify
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

define Package/perl-class-mix/install
	$(call perlmod/Install,$(1),Class)
endef

$(eval $(call BuildPackage,perl-class-mix))
$(eval $(call HostBuild))
