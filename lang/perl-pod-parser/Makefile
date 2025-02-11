include $(TOPDIR)/rules.mk

PKG_NAME:=perl-pod-parser
PKG_VERSION:=1.67
PKG_RELEASE:=1

PKG_SOURCE:=Pod-Parser-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MA/MAREKR/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Pod-Parser-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-pod-parser/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Pod-Parser-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-pod-parser/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-pod-parser
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Pod Parser
  URL:=https://metacpan.org/dist/Pod-Parser
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

define Package/perl-pod-parser/install
	$(call perlmod/Install,$(1),Pod)
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/podselect $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-pod-parser))
$(eval $(call HostBuild))
