include $(TOPDIR)/rules.mk

PKG_NAME:=perl-scalar-list-utils
PKG_VERSION:=1.68
PKG_RELEASE:=1

PKG_SOURCE:=Scalar-List-Utils-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/P/PE/PEVANS/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Scalar-List-Utils-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Scalar-List-Utils-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-scalar-list-utils
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Scalar List Utils
  URL:=https://metacpan.org/dist/Scalar-List-Utils
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

define Package/perl-scalar-list-utils/install
	$(call perlmod/Install,$(1),List Scalar Sub auto/List)
endef

$(eval $(call BuildPackage,perl-scalar-list-utils))
$(eval $(call HostBuild))
