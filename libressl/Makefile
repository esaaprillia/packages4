#
# Copyright (C) 2016-2017 LEDE project
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libressl
PKG_VERSION:=3.7.3
PKG_HASH:=7948c856a90c825bd7268b6f85674a8dcd254bae42e221781b24e3f8dc335db3

PKG_CPE_ID:=cpe:/a:openbsd:libressl

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://mirror.ox.ac.uk/pub/OpenBSD/LibreSSL \
	http://ftp.jaist.ac.jp/pub/OpenBSD/LibreSSL \
	https://ftp.openbsd.org/pub/OpenBSD/LibreSSL

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=COPYING

PKG_HOST_ONLY:=1
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

HOSTCC := $(HOSTCC_NOCACHE)

HOST_CFLAGS += $(HOST_FPIC)

define Package/libressl
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=Free version of the TLS/crypto stack forked from OpenSSL
  URL:=https://www.libressl.org/
  BUILDONLY:=1
endef

HOST_CONFIGURE_ARGS += \
	--prefix=$(STAGING_DIR_HOST) \
	--with-openssldir=$(STAGING_DIR_HOST)/etc/ssl \
	--libdir=$(STAGING_DIR_HOST)/lib \
	--includedir=$(STAGING_DIR_HOST)/include/openssl \
	--enable-static \
	--enable-shared \
	--disable-asm \
	--with-pic \
	--disable-tests

define Package/libressl/description
  LibreSSL is a version of the TLS/crypto stack forked from OpenSSL in 2014, with goals of modernizing the codebase, improving security, and applying best practice development processes.
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libressl))
