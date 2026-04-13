include $(TOPDIR)/rules.mk

PKG_NAME:=perl-pcsc
PKG_VERSION:=1.4.16
PKG_RELEASE:=1

PKG_SOURCE:=Chipcard-PCSC-v$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://pcsc-perl.apdu.fr/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Chipcard-PCSC-v$(PKG_VERSION)

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/perl-pcsc
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Perl wrapper lets you access the PCSC/lite API with Perl
  URL:=https://pcsc-perl.apdu.fr/
  DEPENDS:=perl +perlbase-essential +libpcsclite
endef

define Package/perl-pcsc/description
	This library allows to communicate with a smart card using PC/SC (Microsoft version or pcsc-lite for Unixes) from a Perl script.
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-pcsc/install
	$(call perlmod/Install,$(1),Chipcard auto/Chipcard)
endef

$(eval $(call BuildPackage,perl-pcsc))
