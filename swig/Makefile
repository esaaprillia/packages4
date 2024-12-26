#
# Copyright (C) 2006-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=swig
PKG_VERSION:=4.2.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/$(PKG_NAME)
PKG_HASH:=fa045354e2d048b2cddc69579e4256245d4676894858fcf0bab2290ecf59b7d8

PKG_MAINTAINER:=John Crispin <blogic@openwrt.org>, Hirokazu MORIKAWA <morikw2@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1
HOST_BUILD_PARALLEL:=1
HOST_BUILD_DEPENDS:=pcre2/host python3/host
PYTHON3_HOST_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/python3-host-build.mk

define Package/swig
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=swig binding generator
  URL:=https://swig.org/
  BUILDONLY:=1
endef

HOST_CONFIGURE_VARS += \
	PYTHON="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

HOST_CONFIGURE_ARGS += \
	--with-pcre \
	--with-python3="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

define Package/swig/description
  tool that generates bindings for various languages
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,swig))
