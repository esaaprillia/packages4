include $(TOPDIR)/rules.mk

PKG_NAME:=zoneminder
PKG_VERSION:=1.38.1
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://github.com/ZoneMinder/zoneminder.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=6913b0615a3f6627d669ff1034a74a10cad4ebbe
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build
PKG_BUILD_DEPENDS:=perl-sys-mmap/host perl-dbi/host perl-dbd-mysql/host perl-date-manip/host perl-lwp-protocol-https/host perl-libwww/host arp-scan/host nlohmannjson

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-perl.mk
include $(TOPDIR)/feeds/python/lang/perl/perlmod-zoneminder.mk

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
	+procps-ng-free \
	+procps-ng-kill \
	+procps-ng-pgrep \
	+procps-ng-pkill \
	+procps-ng-pmap \
	+procps-ng-ps \
	+procps-ng-pwdx \
	+procps-ng-skill \
	+procps-ng-slabtop \
	+procps-ng-snice \
	+procps-ng-sysctl \
	+procps-ng-tload \
	+procps-ng-top \
	+procps-ng-uptime \
	+procps-ng-vmstat \
	+procps-ng-w \
	+procps-ng-watch \
	+procps-ng \
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
	+perl-x10 \
	+apache \
	+apache-mod-deflate \
	+mariadb-server-extra \
	+mariadb-client-extra \
	+php8-cgi \
	+php8-cli \
	+apache-mod-php8 \
	+php8-mod-bcmath \
	+php8-mod-calendar \
	+php8-mod-ctype \
	+php8-mod-curl \
	+php8-mod-dom \
	+php8-mod-exif \
	+php8-mod-fileinfo \
	+php8-mod-filter \
	+php8-mod-ftp \
	+php8-mod-gettext \
	+php8-mod-gd \
	+php8-mod-gmp \
	+php8-mod-iconv \
	+php8-mod-intl \
	+php8-mod-mbstring \
	+php8-mod-mysqli \
	+php8-mod-mysqlnd \
	+php8-mod-opcache \
	+php8-mod-openssl \
	+php8-mod-pcntl \
	+php8-mod-pdo \
	+php8-mod-pdo-mysql \
	+php8-mod-phar \
	+php8-mod-session \
	+php8-mod-shmop \
	+php8-mod-simplexml \
	+php8-mod-soap \
	+php8-mod-sockets \
	+php8-mod-sodium \
	+php8-mod-sysvmsg \
	+php8-mod-sysvsem \
	+php8-mod-sysvshm \
	+php8-mod-tokenizer \
	+php8-mod-xml \
	+php8-mod-xmlreader \
	+php8-mod-xmlwriter \
	+php8-mod-zip \
	+php8-pecl-apcu \
	+icu-full-data \
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

define Build/Configure
	$(call Build/Configure/Default)
	$(call perlmod/Configure,DESTDIR="$(PKG_BUILD_DIR)/build/onvif/proxy/output",,$(PKG_BUILD_DIR)/build/onvif/proxy)
	$(call perlmod/Configure,DESTDIR="$(PKG_BUILD_DIR)/build/onvif/modules/output",,$(PKG_BUILD_DIR)/build/onvif/modules)
	$(call perlmod/Configure,DESTDIR="$(PKG_BUILD_DIR)/build/scripts/ZoneMinder/output",,$(PKG_BUILD_DIR)/build/scripts/ZoneMinder)
endef

define Build/Compile
	$(call perlmod/Compile,,,$(PKG_BUILD_DIR)/build/onvif/proxy)
	$(call perlmod/Compile,,,$(PKG_BUILD_DIR)/build/onvif/modules)
	$(call perlmod/Compile,,,$(PKG_BUILD_DIR)/build/scripts/ZoneMinder)
	$(call Build/Compile/Default)
endef

CMAKE_OPTIONS += \
	-DZM_CONFIG_DIR=/etc/zoneminder \
	-DZM_CONFIG_SUBDIR=/etc/zoneminder/conf.d \
	-DZM_RUNDIR=/var/run/zoneminder \
	-DZM_SOCKDIR=/var/run/zoneminder \
	-DZM_LOGDIR=/var/log/zoneminder \
	-DZM_TMPDIR=/var/tmp/zoneminder \
	-DZM_CONTENTDIR=/var/lib/zoneminder \
	-DZM_CACHEDIR=/var/lib/zoneminder/cache \
	-DZM_DIR_EVENTS=/var/lib/zoneminder/events \
	-DZM_DIR_IMAGES=/var/lib/zoneminder/images \
	-DZM_WEBDIR=/www/zoneminder \
	-DZM_CGIDIR=/www/cgi-bin \
	-DZM_DB_HOST=127.0.0.1 \
	-DZM_WEB_USER=root \
	-DZM_WEB_GROUP=root \
	-DZM_PATH_API=/zoneminder/api \
	-DZM_PATH_ARP="/sbin/ip neigh" \
	-DZM_PATH_ARP_SCAN="/usr/bin/arp-scan" \
	-DZM_PATH_RM="/bin/rm" \
	-DZM_PATH_UNAME="/bin/uname" \
	-DZM_PATH_IP="/sbin/ip" \
	-DZM_PATH_IFCONFIG="/sbin/ifconfig" \
	-DFFMPEG_EXECUTABLE="/usr/bin/ffmpeg" \
	-DGSOAP_ROOT="$(STAGING_DIR)/usr" \
	-DGSOAP_TOOL_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DPERL_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION3)"

define Package/zoneminder/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/build/zmlinkcontent.sh $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
	$(INSTALL_DIR) $(1)/www
	$(CP) $(PKG_INSTALL_DIR)/www/* $(1)/www/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/zm*.pl
	$(call perlmod/Install,$(1),ONVIF WSDiscovery WSDiscovery10 WSDiscovery11 WSNotification WSSecurity ZoneMinder ZoneMinder.pm)
endef

$(eval $(call BuildPackage,zoneminder))
