include $(TOPDIR)/rules.mk

PKG_NAME:=perl-image-magick
PKG_VERSION:=7.1.1
PKG_RELEASE:=1

PKG_SOURCE:=Image-Magick-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/J/JC/JCRISTY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/perl/Image-Magick-$(PKG_VERSION)
HOST_BUILD_DEPENDS:=perl/host
PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Image-Magick-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=perl/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../perl/perlmod.mk

define Package/perl-image-magick
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Image-Magick
  URL:=https://metacpan.org/dist/Image-Magick
  DEPENDS:=perl +perlbase-base +imagemagick
endef

define Host/Configure
        $(call perlmod/host/Configure,,,)
endef

define Host/Compile
        $(call perlmod/host/Compile,,)
endef

define Host/Install
        $(call perlmod/host/Install,$(1),)
endef

define Build/Configure
	$(call perlmod/Configure,,)
endef

define Build/Compile
	$(call perlmod/Compile,,)
endef

define Package/perl-image-magick/install
	$(call perlmod/Install,$(1),Image auto/Image)
endef

$(eval $(call BuildPackage,perl-image-magick))
$(eval $(call HostBuild))
