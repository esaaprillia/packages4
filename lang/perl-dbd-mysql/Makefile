include $(TOPDIR)/rules.mk

PKG_NAME:=perl-dbd-mysql
PKG_VERSION:=4.055
PKG_RELEASE:=1

PKG_SOURCE:=DBD-mysql-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/D/DV/DVEEDEN/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Artistic-1.0-Perl GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSES

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/DBD-mysql-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl-dbi/host
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/DBD-mysql-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl-dbi/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-dbd-mysql
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl DBD mysql
  URL:=https://metacpan.org/dist/DBD-mysql
  DEPENDS:=+perl-dbi +libmariadb +libopenssl +zlib
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

define Package/perl-dbd-mysql/install
	$(call perlmod/Install,$(1),auto/DBD DBD)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,perl-dbd-mysql))
