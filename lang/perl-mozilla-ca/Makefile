include $(TOPDIR)/rules.mk

PKG_NAME:=perl-mozilla-ca
PKG_VERSION:=20240730
PKG_RELEASE:=1

PKG_SOURCE:=Mozilla-CA-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/L/LW/LWP/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl
PKG_LICENSE_FILES:=

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Mozilla-CA-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Mozilla-CA-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-mozilla-ca
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Mozilla's CA cert bundle in PEM format
  URL:=https://metacpan.org/dist/Mozilla-CA
  DEPENDS:=perl +ca-certificates +perlbase-essential +perlbase-file
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
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

define Package/perl-mozilla-ca/install
	$(call perlmod/Install,$(1),Mozilla)
endef

$(eval $(call BuildPackage,perl-mozilla-ca))
$(eval $(call HostBuild))
