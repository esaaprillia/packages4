include $(TOPDIR)/rules.mk

PKG_NAME:=perl-archive-zip
PKG_VERSION:=1.68
PKG_RELEASE:=1

PKG_SOURCE:=Archive-Zip-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/P/PH/PHRED/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Archive-Zip-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host perl-test-mockmodule/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Archive-Zip-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host perl-test-mockmodule/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-archive-zip
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Archive Zip
  URL:=https://metacpan.org/dist/Archive-Zip
  DEPENDS:=perl +perlbase-base +perl-test-mockmodule
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

define Package/perl-archive-zip/install
	$(call perlmod/Install,$(1),Archive)
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/crc32 $(1)/usr/bin/
endef

$(eval $(call BuildPackage,perl-archive-zip))
$(eval $(call HostBuild))
