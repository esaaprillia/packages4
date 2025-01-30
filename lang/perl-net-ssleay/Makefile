include $(TOPDIR)/rules.mk

PKG_NAME:=perl-net-ssleay
PKG_VERSION:=1.94
PKG_RELEASE:=1

PKG_SOURCE:=Net-SSLeay-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/C/CH/CHRISN/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Artistic-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Net-SSLeay-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Net-SSLeay-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-net-ssleay
	SUBMENU:=Perl
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Perl extension for using OpenSSL
	DEPENDS:=perl +libopenssl +zlib +perlbase-essential +perlbase-autoloader +perlbase-errno +perlbase-socket
	URL:=https://metacpan.org/dist/Net-SSLeay
endef

define Build/Configure
	$(call perlmod/Configure,,OPENSSL_PREFIX="$(STAGING_DIR)/usr",)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-net-ssleay/install
	$(call perlmod/Install,$(1),Net auto/Net)
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

$(eval $(call BuildPackage,perl-net-ssleay))
$(eval $(call HostBuild))
