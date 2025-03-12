include $(TOPDIR)/rules.mk

PKG_NAME:=musl-locales
PKG_VERSION:=0.1.0
PKG_RELEASE:=2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://git.adelielinux.org/adelie/musl-locales/-/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0-only
PKG_LICENSE_FILES:=LICENSE.MIT

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/musl-locales
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Locales support for musl
	DEPENDS:=+libintl-full
	URL:=https://git.adelielinux.org/adelie/musl-locales/-/wikis/home
endef

define Package/musl-locales/description
	This repository contains code and translation files for better locale support for the musl libc.
	The locale(1) command displays information about the currently set locale, or displays a list of locales available on the system.
	The translation files provide localisation to musl, including libc-provided error messages, date and time strings, and so forth.
endef

CMAKE_OPTIONS += \
	-DLOCALE_PROFILE=OFF

define Package/musl-locales/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/locale \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{i18n,locale} \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,musl-locales))
