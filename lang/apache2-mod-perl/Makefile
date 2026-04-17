include $(TOPDIR)/rules.mk

PKG_NAME:=apache2-mod-perl
PKG_VERSION:=2.0.13
PKG_RELEASE:=1

PKG_SOURCE:=mod_perl-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://dlcdn.apache.org/perl/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/mod_perl-$(PKG_VERSION)

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/apache2-mod-perl
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Module for Apache2
  URL:=https://perl.apache.org/
  DEPENDS:=perl +perlbase-base +apache
endef

#MOD_CFLAGS_PERL += $(FPIC)

define Build/Configure
	$(call perlmod/Configure,MP_APXS="$(STAGING_DIR)/usr/bin/apxs" MP_APR_CONFIG="$(STAGING_DIR)/usr/bin/apr-1-config",,)
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/Apache-Reload/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/Apache-SizeLimit/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/Apache-Test/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/APR/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/APR/APR/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/Apache2/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/ModPerl/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/APR/Const/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/APR/PerlIO/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/APR/aprext/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/ModPerl-Registry/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/Apache2/Const/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/xs/ModPerl/Const/Makefile
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/apache2-mod-perl/install
	$(call perlmod/Install,$(1),APR.pm mod_perl2.pm APR Apache Apache2 Bundle ModPerl auto)
	$(INSTALL_DIR) $(1)/usr/lib/apache2
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/apache2/*.so* $(1)/usr/lib/apache2/
endef

$(eval $(call BuildPackage,apache2-mod-perl))
