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
include $(TOPDIR)/feeds/python/lang/perl/perlmod-zoneminder.mk

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
	-DCMAKE_VERBOSE_MAKEFILE=ON \
	-DZM_CONFIG_DIR=/etc/zoneminder \
	-DZM_RUNDIR=/var/run/zoneminder \
	-DZM_SOCKDIR=/var/run/zoneminder \
	-DZM_LOGDIR=/var/log/zoneminder \
	-DZM_TMPDIR=/var/tmp/zoneminder \
	-DZM_WEBDIR=/www/zoneminder \
	-DZM_CGIDIR=/www/cgi-bin \
	-DGSOAP_ROOT="$(STAGING_DIR)/usr" \
	-DGSOAP_TOOL_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DPERL_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION3)" \
	-Dperl="$(STAGING_DIR_HOSTPKG)/usr/bin/perl$(PERL_VERSION3)"

define Package/zoneminder/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
	$(INSTALL_DIR) $(1)/www
	$(CP) $(PKG_INSTALL_DIR)/www/* $(1)/www/
	$(SED) "1"'!'"b;s,^#"'!'".*perl.*,#"'!'"/usr/bin/perl," -i --follow-symlinks $(1)/usr/bin/zm*.pl
	$(call perlmod/Install,$(1),ONVIF WSDiscovery WSDiscovery10 WSDiscovery11 WSNotification WSSecurity ZoneMinder ZoneMinder.pm)
endef

$(eval $(call BuildPackage,zoneminder))
