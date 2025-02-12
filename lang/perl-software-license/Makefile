include $(TOPDIR)/rules.mk

PKG_NAME:=perl-software-license
PKG_VERSION:=0.104006
PKG_RELEASE:=1

PKG_SOURCE:=Software-License-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/L/LE/LEONT/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Software-License-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-try-tiny/host perl-data-section/host perl-text-template/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Software-License-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-try-tiny/host perl-data-section/host perl-text-template/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-software-license
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Software License
  URL:=https://metacpan.org/dist/Software-License
  DEPENDS:=perl +perlbase-base +perl-data-section +perl-text-template +perl-try-tiny
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

define Package/perl-software-license/install
	$(call perlmod/Install,$(1),Software)
endef

$(eval $(call BuildPackage,perl-software-license))
$(eval $(call HostBuild))
