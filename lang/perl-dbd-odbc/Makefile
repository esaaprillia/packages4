include $(TOPDIR)/rules.mk

PKG_NAME:=perl-dbd-odbc
PKG_VERSION:=1.61
PKG_RELEASE:=1

PKG_SOURCE:=DBD-ODBC-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MJ/MJEVANS/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Artistic-1.0-Perl GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSES

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/DBD-ODBC-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=perl-dbi/host

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/perl-dbd-odbc
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl DBD odbc
  URL:=https://metacpan.org/release/DBD-ODBC/
  DEPENDS:=+perl-dbi +libodbc +libopenssl +zlib
endef

define Build/Configure
	$(call perlmod/Configure,,ODBCHOME="$(STAGING_DIR)/usr",)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-dbd-odbc/install
	$(call perlmod/Install,$(1),auto/DBD DBD)
endef

$(eval $(call BuildPackage,perl-dbd-odbc))
