include $(TOPDIR)/rules.mk

PKG_NAME:=perl-apache-test
PKG_VERSION:=1.43
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/S/SH/SHAY/
PKG_SOURCE:=Apache-Test-$(PKG_VERSION).tar.gz
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Apache-Test-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Apache-Test-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-apache-test
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Running and Developing Tests with the Apache::Test Framework
  URL:=https://metacpan.org/dist/Apache-Test
  DEPENDS:=perl +perlbase-essential
endef

define Package/perl-apache-test/description
Apache::Test is a test toolkit for testing an Apache server with any
configuration. It works with Apache 1.3 and Apache 2.0/2.2/2.4 and any
of its modules, including mod_perl 1.0 and 2.0. It was originally developed
for testing mod_perl 2.0.
endef

define Host/Configure
	$(call perlmod/host/Configure,,)
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

define Package/perl-apache-test/install
	$(call perlmod/Install,$(1),Apache Bundle)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-apache-test))
