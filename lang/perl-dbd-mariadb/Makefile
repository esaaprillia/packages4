include $(TOPDIR)/rules.mk

PKG_NAME:=perl-dbd-mariadb
PKG_VERSION:=1.23
PKG_RELEASE:=1

PKG_SOURCE:=DBD-MariaDB-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/P/PA/PALI/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Artistic-1.0-Perl GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSES

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/DBD-MariaDB-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=perl-dbi/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/perl/perlmod.mk

define Package/perl-dbd-mariadb
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl DBD MariaDB
  URL:=https://metacpan.org/dist/DBD-MariaDB
  DEPENDS:=+perl-dbi +libmariadb +libopenssl +zlib
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-dbd-mariadb/install
	$(call perlmod/Install,$(1),auto/DBD DBD)
endef

$(eval $(call BuildPackage,perl-dbd-mariadb))
