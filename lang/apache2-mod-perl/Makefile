#
# Copyright (C) 2015 - 2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=apache2-mod-perl
PKG_VERSION:=2.0.13
PKG_RELEASE:=1

PKG_SOURCE:=mod_perl-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://dlcdn.apache.org/perl/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/mod_perl-$(PKG_VERSION)

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
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

MOD_CFLAGS_PERL += $(FPIC)

define Build/Configure
	$(call perlmod/Configure,MP_APXS="$(STAGING_DIR)/usr/bin/apxs" MP_APR_CONFIG="$(STAGING_DIR)/usr/bin/apr-1-config",,)
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^PERL_INC = .*!PERL_INC = $(STAGING_DIR)/usr/lib/perl5/$(PERL_VERSION)/CORE/!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^CCFLAGS = .*!CCFLAGS=$(MOD_CFLAGS_PERL)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^CCFLAGS = .*!CCFLAGS=$(MOD_CFLAGS_PERL)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^CCFLAGS = .*!CCFLAGS=$(MOD_CFLAGS_PERL)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^CCCDLFLAGS = .*!CCCDLFLAGS=-fPIC!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^CCCDLFLAGS = .*!CCCDLFLAGS=-fPIC!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^CCCDLFLAGS = .*!CCCDLFLAGS=-fPIC!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^CCDLFLAGS = .*!CCDLFLAGS=-Wl,-E!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^CCDLFLAGS = .*!CCDLFLAGS=-Wl,-E!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^CCDLFLAGS = .*!CCDLFLAGS=-Wl,-E!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^CC = .*!CC=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^CC = .*!CC=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^CC = .*!CC=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^LD = .*!LD=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^LD = .*!LD=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^LD = .*!LD=$(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^FULL_AR = .*!FULL_AR=$(GNU_TARGET_NAME)-ar!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^FULL_AR = .*!FULL_AR=$(GNU_TARGET_NAME)-ar!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^FULL_AR = .*!FULL_AR=$(GNU_TARGET_NAME)-ar!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^LDDLFLAGS = .*!LDDLFLAGS=-shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^LDDLFLAGS = .*!LDDLFLAGS=-shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^LDDLFLAGS = .*!LDDLFLAGS=-shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^LDFLAGS = .*!LDFLAGS=$(EXTRA_LIBDIRS:%=-L%) $(EXTRA_LIBS:%=-l%)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^LDFLAGS = .*!LDFLAGS=$(EXTRA_LIBDIRS:%=-L%) $(EXTRA_LIBS:%=-l%)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^LDFLAGS = .*!LDFLAGS=$(EXTRA_LIBDIRS:%=-L%) $(EXTRA_LIBS:%=-l%)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^LIBC = .*!LIBC=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^LIBC = .*!LIBC=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^LIBC = .*!LIBC=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^SITELIBEXP = .*!SITELIBEXP=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^SITELIBEXP = .*!SITELIBEXP=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^SITELIBEXP = .*!SITELIBEXP=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^SITEARCHEXP = .*!SITEARCHEXP=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^SITEARCHEXP = .*!SITEARCHEXP=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^SITEARCHEXP = .*!SITEARCHEXP=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^VENDORARCHEXP = .*!VENDORARCHEXP=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^VENDORARCHEXP = .*!VENDORARCHEXP=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^VENDORARCHEXP = .*!VENDORARCHEXP=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^VENDORLIBEXP = .*!VENDORLIBEXP=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^VENDORLIBEXP = .*!VENDORLIBEXP=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^VENDORLIBEXP = .*!VENDORLIBEXP=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^SITEPREFIX = .*!SITEPREFIX=/usr!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^SITEPREFIX = .*!SITEPREFIX=/usr!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^SITEPREFIX = .*!SITEPREFIX=/usr!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLPRIVLIB = .*!INSTALLPRIVLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLPRIVLIB = .*!INSTALLPRIVLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLPRIVLIB = .*!INSTALLPRIVLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITELIB = .*!INSTALLSITELIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITELIB = .*!INSTALLSITELIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITELIB = .*!INSTALLSITELIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORLIB = .*!INSTALLVENDORLIB=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORLIB = .*!INSTALLVENDORLIB=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORLIB = .*!INSTALLVENDORLIB=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLARCHLIB = .*!INSTALLARCHLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLARCHLIB = .*!INSTALLARCHLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLARCHLIB = .*!INSTALLARCHLIB=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITEARCH = .*!INSTALLSITEARCH=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITEARCH = .*!INSTALLSITEARCH=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITEARCH = .*!INSTALLSITEARCH=$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORARCH = .*!INSTALLVENDORARCH=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORARCH = .*!INSTALLVENDORARCH=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORARCH = .*!INSTALLVENDORARCH=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLBIN = .*!INSTALLBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLBIN = .*!INSTALLBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLBIN = .*!INSTALLBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITEBIN = .*!INSTALLSITEBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITEBIN = .*!INSTALLSITEBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITEBIN = .*!INSTALLSITEBIN=/usr/bin!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORBIN = .*!INSTALLVENDORBIN=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORBIN = .*!INSTALLVENDORBIN=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORBIN = .*!INSTALLVENDORBIN=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSCRIPT = .*!INSTALLSCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSCRIPT = .*!INSTALLSCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSCRIPT = .*!INSTALLSCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITESCRIPT = .*!INSTALLSITESCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITESCRIPT = .*!INSTALLSITESCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITESCRIPT = .*!INSTALLSITESCRIPT=/usr/bin!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORSCRIPT = .*!INSTALLVENDORSCRIPT=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORSCRIPT = .*!INSTALLVENDORSCRIPT=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORSCRIPT = .*!INSTALLVENDORSCRIPT=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLMAN1DIR = .*!INSTALLMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLMAN1DIR = .*!INSTALLMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLMAN1DIR = .*!INSTALLMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN1DIR = .*!INSTALLSITEMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN1DIR = .*!INSTALLSITEMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN1DIR = .*!INSTALLSITEMAN1DIR=/usr/man/man1!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN1DIR = .*!INSTALLVENDORMAN1DIR=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN1DIR = .*!INSTALLVENDORMAN1DIR=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN1DIR = .*!INSTALLVENDORMAN1DIR=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLMAN3DIR = .*!INSTALLMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLMAN3DIR = .*!INSTALLMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLMAN3DIR = .*!INSTALLMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN3DIR = .*!INSTALLSITEMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN3DIR = .*!INSTALLSITEMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLSITEMAN3DIR = .*!INSTALLSITEMAN3DIR=/usr/man/man3!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN3DIR = .*!INSTALLVENDORMAN3DIR=!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN3DIR = .*!INSTALLVENDORMAN3DIR=!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^INSTALLVENDORMAN3DIR = .*!INSTALLVENDORMAN3DIR=!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^LINKTYPE = .*!LINKTYPE=dynamic!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^LINKTYPE = .*!LINKTYPE=dynamic!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^LINKTYPE = .*!LINKTYPE=dynamic!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	#sed -i -e 's!^DESTDIR = .*!DESTDIR=$(PKG_INSTALL_DIR)!' $(PKG_BUILD_DIR)/*/Makefile
	#sed -i -e 's!^DESTDIR = .*!DESTDIR=$(PKG_INSTALL_DIR)!' $(PKG_BUILD_DIR)/*/*/Makefile
	#sed -i -e 's!^DESTDIR = .*!DESTDIR=$(PKG_INSTALL_DIR)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	#sed -i -e '103d' $(PKG_BUILD_DIR)/src/modules/perl/Makefile
	sed -i -e 's!^MODPERL_ARCHLIBEXP = .*!MODPERL_ARCHLIBEXP = $(STAGING_DIR)$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_ARCHLIBEXP = .*!MODPERL_ARCHLIBEXP = $(STAGING_DIR)$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_ARCHLIBEXP = .*!MODPERL_ARCHLIBEXP = $(STAGING_DIR)$(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_CC = .*!MODPERL_CC = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_CC = .*!MODPERL_CC = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_CC = .*!MODPERL_CC = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_CPPRUN = .*!MODPERL_CPPRUN = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_CPPRUN = .*!MODPERL_CPPRUN = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_CPPRUN = .*!MODPERL_CPPRUN = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_LDDLFLAGS = .*!MODPERL_LDDLFLAGS = -shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_LDDLFLAGS = .*!MODPERL_LDDLFLAGS = -shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_LDDLFLAGS = .*!MODPERL_LDDLFLAGS = -shared -rdynamic $(TARGET_LDFLAGS)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_PRIVLIBEXP = .*!MODPERL_PRIVLIBEXP = $(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_PRIVLIBEXP = .*!MODPERL_PRIVLIBEXP = $(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_PRIVLIBEXP = .*!MODPERL_PRIVLIBEXP = $(PERL_SITELIB)!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_LD = .*!MODPERL_LD = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_LD = .*!MODPERL_LD = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_LD = .*!MODPERL_LD = $(GNU_TARGET_NAME)-gcc!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_CCOPTS = .*!MODPERL_CCOPTS = -D_LARGEFILE_SOURCE $(if $(CONFIG_USE_MUSL),-D_LARGEFILE64_SOURCE) -D_FILE_OFFSET_BITS=64 -D_REENTRANT -D_GNU_SOURCE -I$(STAGING_DIR)$(PERL_SITELIB)/CORE!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_CCOPTS = .*!MODPERL_CCOPTS = -D_LARGEFILE_SOURCE $(if $(CONFIG_USE_MUSL),-D_LARGEFILE64_SOURCE) -D_FILE_OFFSET_BITS=64 -D_REENTRANT -D_GNU_SOURCE -I$(STAGING_DIR)$(PERL_SITELIB)/CORE!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_CCOPTS = .*!MODPERL_CCOPTS = -D_LARGEFILE_SOURCE $(if $(CONFIG_USE_MUSL),-D_LARGEFILE64_SOURCE) -D_FILE_OFFSET_BITS=64 -D_REENTRANT -D_GNU_SOURCE -I$(STAGING_DIR)$(PERL_SITELIB)/CORE!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	sed -i -e 's!^MODPERL_LDOPTS = .*!MODPERL_LDOPTS = -Wl,-rpath,$(PERL_SITELIB)/CORE -L$(STAGING_DIR)$(PERL_SITELIB)/CORE -lperl!' $(PKG_BUILD_DIR)/*/Makefile
	sed -i -e 's!^MODPERL_LDOPTS = .*!MODPERL_LDOPTS = -Wl,-rpath,$(PERL_SITELIB)/CORE -L$(STAGING_DIR)$(PERL_SITELIB)/CORE -lperl!' $(PKG_BUILD_DIR)/*/*/Makefile
	sed -i -e 's!^MODPERL_LDOPTS = .*!MODPERL_LDOPTS = -Wl,-rpath,$(PERL_SITELIB)/CORE -L$(STAGING_DIR)$(PERL_SITELIB)/CORE -lperl!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	#sed -i -e 's!^MODPERL_INC = .*!MODPERL_INC = -I$(PKG_BUILD_DIR)/src/modules/perl -I$(PKG_BUILD_DIR)/xs -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include -I$(STAGING_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/Makefile
	#sed -i -e 's!^MODPERL_INC = .*!MODPERL_INC = -I$(PKG_BUILD_DIR)/src/modules/perl -I$(PKG_BUILD_DIR)/xs -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include -I$(STAGING_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/*/Makefile
	#sed -i -e 's!^MODPERL_INC = .*!MODPERL_INC = -I$(PKG_BUILD_DIR)/src/modules/perl -I$(PKG_BUILD_DIR)/xs -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include/apr-1.0 -I$(STAGING_DIR)/usr/include -I$(STAGING_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	#sed -i -e 's!^MODPERL_AP_INCLUDEDIR = .*!MODPERL_AP_INCLUDEDIR = $(PKG_INSTALL_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/Makefile
	#sed -i -e 's!^MODPERL_AP_INCLUDEDIR = .*!MODPERL_AP_INCLUDEDIR = $(PKG_INSTALL_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/Makefile
	#sed -i -e 's!^MODPERL_AP_INCLUDEDIR = .*!MODPERL_AP_INCLUDEDIR = $(PKG_INSTALL_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/*/Makefile
	#sed -i -e 's!^MODPERL_AP_INCLUDEDIR = .*!MODPERL_AP_INCLUDEDIR = $(PKG_INSTALL_DIR)/usr/include/apache2!' $(PKG_BUILD_DIR)/*/*/*/Makefile
	#mkdir -p $(PKG_INSTALL_DIR)/usr/bin
	#mkdir -p $(PKG_INSTALL_DIR)/usr/lib/apache2
	#mkdir -p $(PKG_INSTALL_DIR)/usr/include/apache2
endef

define Build/Compile
	$(call Build/Compile/Default,,,$(PKG_BUILD_DIR)/src/modules/perl)
	$(call perlmod/Compile,,)
endef

define Package/apache2-mod-perl/install
	$(call perlmod/Install,$(1),APR.pm mod_perl2.pm APR Apache Apache2 Bundle ModPerl auto)
	$(INSTALL_DIR) $(1)/usr/lib/apache2
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/apache2/*.so* $(1)/usr/lib/apache2/
endef

$(eval $(call BuildPackage,apache2-mod-perl))
