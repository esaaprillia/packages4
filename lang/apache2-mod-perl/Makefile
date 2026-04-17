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
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Base64/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Brigade/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Bucket/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/BucketAlloc/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/BucketType/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Date/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Error/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Finfo/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/IpSubnet/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/OS/Makefile.PL
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Pool/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/SockAddr/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Socket/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Status/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/String/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Table/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/ThreadMutex/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/ThreadRWLock/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/URI/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/UUID/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/APR/Util/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Access/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/CmdParms/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Command/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Connection/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/ConnectionUtil/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Directive/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Filter/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/FilterRec/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/HookRun/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Log/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/MPM/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Module/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Process/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Provider/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/RequestIO/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/RequestRec/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/RequestUtil/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Response/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/ServerRec/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/ServerUtil/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/SubProcess/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/SubRequest/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/URI/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/Apache2/Util/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/Global/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/InterpPool/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/Interpreter/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/TiPool/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/TiPoolConfig/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/WrapXS/ModPerl/Util/Makefile
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
