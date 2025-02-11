include $(TOPDIR)/rules.mk

PKG_NAME:=perl-devel-symdump
PKG_VERSION:=2.18
PKG_RELEASE:=1

PKG_SOURCE:=Devel-Symdump-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/A/AN/ANDK/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Devel-Symdump-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-devel-symdump/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Devel-Symdump-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-devel-symdump/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-devel-symdump
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Devel Symdump
  URL:=https://metacpan.org/dist/Devel-Symdump
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

define Package/perl-devel-symdump/install
	$(call perlmod/Install,$(1),Devel)
endef

$(eval $(call BuildPackage,perl-devel-symdump))
$(eval $(call HostBuild))
