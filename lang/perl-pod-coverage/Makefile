include $(TOPDIR)/rules.mk

PKG_NAME:=perl-pod-coverage
PKG_VERSION:=0.23
PKG_RELEASE:=1

PKG_SOURCE:=Pod-Coverage-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/R/RC/RCLAMP/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Pod-Coverage-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-devel-symdump/host perl-pod-parser/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Pod-Coverage-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-devel-symdump/host perl-pod-parser/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-pod-coverage
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Pod Coverage
  URL:=https://metacpan.org/dist/Pod-Coverage
  DEPENDS:=perl +perlbase-base +perl-devel-symdump +perl-pod-parser
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

define Package/perl-pod-coverage/install
	$(call perlmod/Install,$(1),Pod)
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/pod_cover $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-pod-coverage))
$(eval $(call HostBuild))
