include $(TOPDIR)/rules.mk

PKG_NAME:=zoneminder
PKG_VERSION:=1.38.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/ZoneMinder/zoneminder.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=39c2cc997beb038aed2e7f17abf372ee3b32e090
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build
PKG_BUILD_DEPENDS:=perl-sys-mmap/host perl-dbi/host perl-dbd-mysql/host perl-date-manip/host perl-lwp-protocol-https/host perl-libwww/host arp-scan/host nlohmannjson

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-perl.mk

define Package/zoneminder
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=ZoneMinder is a free, open source Closed-circuit television software application developed for Linux which supports IP, USB and Analog cameras.
	URL:=http://www.zoneminder.com/
	DEPENDS:= \
	+arp-scan \
	+arp-scan-database \
	+ffmpeg \
	+glib2 \
	+gsoap \
	+perl \
	+perl-archive-zip \
	+perl-crypt-eksblowfish \
	+perl-class-std-fast \
	+perl-data-dump \
	+perl-data-entropy \
	+perl-data-uuid \
	+perl-date-manip \
	+perl-datetime \
	+perl-dbd-mysql \
	+perl-device-serialport \
	+perl-file-slurp \
	+perl-image-info \
	+perl-io-interface \
	+perl-io-socket-multicast \
	+perl-json-maybexs \
	+perl-libwww \
	+perl-lwp-protocol-https \
	+perl-mailtools \
	+perl-mime-lite \
	+perl-mime-tools \
	+perl-net-sftp-foreign \
	+perl-number-bytes-human \
	+perl-php-serialization \
	+perl-soap-lite \
	+perl-soap-wsdl \
	+perl-sys-cpu \
	+perl-sys-meminfo \
	+perl-sys-mmap \
	+perl-time-hires \
	+perl-uri-encode \
	+perl-xml-libxml \
	+perl-xml-parser \
	+libcurl \
	+libjpeg-turbo \
	+libjwt \
	+libmariadb \
	+libmosquittopp \
	+libopenssl \
	+libpcre2 \
	+libunwind \
	+libv4l \
	+libx264 \
	+zlib
endef

define Package/zoneminder/description
	ZoneMinder is an integrated set of applications which provide a complete surveillance solution allowing capture, analysis, recording and monitoring of any CCTV or security cameras attached to a Linux based machine.
endef

CMAKE_OPTIONS += \
	-DZM_CONFIG_DIR=/etc/zm \
	-DZM_CONFIG_SUBDIR=/etc/zm/conf.d \
	-DZM_WEBDIR=/www/zm \
	-DZM_CGIDIR=/www/cgi-bin \
	-DZM_DB_HOST=127.0.0.1 \
	-DZM_PERL_MM_PARMS_FULL=AR=ar CC=$(GNU_TARGET_NAME)-gcc CCFLAGS="$(MOD_CFLAGS_PERL)" CCCDLFLAGS=-fPIC CCDLFLAGS=-Wl,-E DLEXT=so DLSRC=dl_dlopen.xs EXE_EXT=" " FULL_AR=$(GNU_TARGET_NAME)-ar LD=$(GNU_TARGET_NAME)-gcc LDDLFLAGS="-shared -rdynamic $(TARGET_LDFLAGS)" LDFLAGS="$(EXTRA_LIBDIRS:%=-L%) $(EXTRA_LIBS:%=-l%) " LIBC=" " LIB_EXT=.a OBJ_EXT=.o OSNAME=linux OSVERS=2.4.30 RANLIB=: SITELIBEXP=" " SITEARCHEXP=" " SO=so VENDORARCHEXP=" " VENDORLIBEXP=" " SITEPREFIX=/usr INSTALLPRIVLIB=$(PERL_SITELIB) INSTALLSITELIB=$(PERL_SITELIB) INSTALLVENDORLIB=" " INSTALLARCHLIB=$(PERL_SITELIB) INSTALLSITEARCH=$(PERL_SITELIB) INSTALLVENDORARCH=" " INSTALLBIN=/usr/bin INSTALLSITEBIN=/usr/bin INSTALLVENDORBIN=" " INSTALLSCRIPT=/usr/bin INSTALLSITESCRIPT=/usr/bin INSTALLVENDORSCRIPT=" " INSTALLMAN1DIR=/usr/share/man/man1 INSTALLSITEMAN1DIR=/usr/share/man/man1 INSTALLVENDORMAN1DIR=" " INSTALLMAN3DIR=/usr/share/man/man3 INSTALLSITEMAN3DIR=/usr/share/man/man3 INSTALLVENDORMAN3DIR=" " LINKTYPE=dynamic NO_PACKLIST=1 NO_PERLLOCAL=1 \
	-DGSOAP_TOOL_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DPERL_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION3)"

define Package/zoneminder/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/perl5 $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
	$(INSTALL_DIR) $(1)/www
	$(CP) $(PKG_INSTALL_DIR)/www/* $(1)/www/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,zoneminder))
