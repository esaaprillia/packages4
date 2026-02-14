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
	+bash \
	+ffmpeg \
	+glib2 \
	+gsoap \
	+perl \
	+perl-cgi \
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
	+perl-uri-encode \
	+perl-xml-libxml \
	+perl-xml-parser \
	+apache \
	+apache-mod-deflate \
	+mariadb-server \
	+mariadb-client \
	+php8 \
	+php8-cgi \
	+php8-cli \
	+apache-mod-php8 \
	+php8-mod-mysqli \
	+php8-mod-pdo-mysql \
	+php8-mod-gd \
	+php8-mod-intl \
	+icu-full-data \
	+php8-mod-session \
	+php8-pecl-apcu \
	+php8-mod-ftp \
	+php8-mod-gettext \
	+php8-mod-sysvsem \
	+php8-mod-zip \
	+php8-mod-ctype \
	+php8-mod-curl \
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
	+libx265 \
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
	-DGSOAP_TOOL_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DPERL_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION3)" \
	-DZM_PERL_MM_PARMS="INSTALLDIRS=$(PERL_SITELIB)" \
	-DZM_PERL_SEARCH_PATH="$(PERL_SITELIB)" \
	-DEXTRA_PERL_LIB="$(PERL_SITELIB)"

define Package/zoneminder/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib/perl5/5.42
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/perl5/5.42/{ON*,WS*,Zo*} $(1)/usr/lib/perl5/5.42/
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/zmlinkcontent.sh $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
	$(INSTALL_DIR) $(1)/www
	$(CP) $(PKG_INSTALL_DIR)/www/* $(1)/www/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/*
endef

$(eval $(call BuildPackage,zoneminder))
