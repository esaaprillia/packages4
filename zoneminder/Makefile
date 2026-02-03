include $(TOPDIR)/rules.mk

PKG_NAME:=zoneminder
PKG_VERSION:=1.38.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/ZoneMinder/zoneminder/archive/$(PKG_VERSION)
#PKG_HASH:=skip

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
include $(TOPDIR)/feeds/python/lang/perl/perlver.mk

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
	+perl-data-entropy \
	+perl-data-uuid \
	+perl-date-manip \
	+perl-dbd-mysql \
	+perl-dbi \
	+perl-device-serialport \
	+perl-libwww \
	+perl-lwp-protocol-https \
	+perl-mailtools \
	+perl-mime-lite \
	+perl-mime-tools \
	+perl-number-bytes-human \
	+perl-php-serialization \
	+perl-sys-meminfo \
	+perl-sys-mmap \
	+perl-time-hires \
	+perl-sys-cpu \
	+perl-json-maybexs \
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

PERL_SITELIB:=/usr/lib/perl$(PERL_MAJOR)/$(PERL_VERSION2)

CMAKE_OPTIONS += \
	-DZM_CONFIG_DIR=/etc/zoneminder \
	-DZM_RUNDIR=/var/run/zoneminder \
	-DZM_SOCKDIR=/var/run/zoneminder \
	-DZM_LOGDIR=/var/log/zoneminder \
	-DZM_TMPDIR=/var/tmp/zoneminder \
	-DZM_WEBDIR=/www/zoneminder \
	-DZM_CGIDIR=/www/cgi-bin \
	-DGSOAP_ROOT="$(STAGING_DIR)/usr" \
	-DGSOAP_TOOL_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DPERL_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION)" \
	-DZM_PERL_MM_PARMS=$(PERL_SITELIB)

define Package/zoneminder/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/flatc $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,zoneminder))
