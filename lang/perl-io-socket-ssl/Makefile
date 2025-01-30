include $(TOPDIR)/rules.mk

PKG_NAME:=perl-io-socket-ssl
PKG_VERSION:=2.088
PKG_RELEASE:=1

PKG_SOURCE:=IO-Socket-SSL-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/S/SU/SULLR/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-1.0-or-later OR Artistic-1.0-Perl
PKG_LICENSE_FILES:=

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/IO-Socket-SSL-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=perl-mozilla-ca/host perl-net-ssleay/host

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/perl-io-socket-ssl
	SUBMENU:=Perl
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Nearly transparent SSL encapsulation for IO::Socket::INET
	DEPENDS:=perl +ca-certificates +perl-uri +perl-net-ssleay +perl-mozilla-ca +perlbase-essential
	URL:=https://metacpan.org/dist/IO-Socket-SSL
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-io-socket-ssl/install
	$(call perlmod/Install,$(1),IO/Socket)
endef

$(eval $(call BuildPackage,perl-io-socket-ssl))
