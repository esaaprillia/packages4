include $(TOPDIR)/rules.mk

PKG_NAME:=perl-yaml-tiny
PKG_VERSION:=1.76
PKG_RELEASE:=1

PKG_SOURCE:=YAML-Tiny-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/E/ET/ETHER/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/YAML-Tiny-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-pod-coverage/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/YAML-Tiny-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-pod-coverage/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-yaml-tiny
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl YAML Tiny
  URL:=https://metacpan.org/dist/YAML-Tiny
  DEPENDS:=perl +perlbase-base +perl-pod-coverage
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

define Package/perl-yaml-tiny/install
	$(call perlmod/Install,$(1),YAML)
endef

$(eval $(call BuildPackage,perl-yaml-tiny))
$(eval $(call HostBuild))
