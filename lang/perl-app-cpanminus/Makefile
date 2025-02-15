include $(TOPDIR)/rules.mk

PKG_NAME:=perl-app-cpanminus
PKG_VERSION:=1.7048
PKG_RELEASE:=1

PKG_SOURCE:=App-cpanminus-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/M/MI/MIYAGAWA/
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/App-cpanminus-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/perl-app-cpanminus
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl App cpanminus
  URL:=https://metacpan.org/dist/App-cpanminus
  DEPENDS:=perl +perlbase-base +perlbase-essential
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-app-cpanminus/install
	$(call perlmod/Install,$(1),App)
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/cpanm $(1)/usr/bin/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/cpanm
endef

$(eval $(call BuildPackage,perl-app-cpanminus))
