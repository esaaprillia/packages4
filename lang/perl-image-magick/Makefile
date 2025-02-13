include $(TOPDIR)/rules.mk

PKG_NAME:=perl-image-magick
PKG_VERSION:=7.1.1
PKG_VERSION_REV:=28
PKG_RELEASE:=1

PKG_SOURCE:=Image-Magick-$(PKG_VERSION)-$(PKG_VERSION_REV).tar.gz
PKG_SOURCE_URL:=https://cpan.metacpan.org/authors/id/J/JC/JCRISTY/
PKG_HASH:=skip

PKG_MAINTAINER:=Marcel Denia <naoir@gmx.net>
PKG_LICENSE:=GPL-1.0-or-later Artistic-1.0-Perl

PKG_BUILD_DIR:=$(BUILD_DIR)/perl/Image-Magick-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../perl/perlmod.mk

define Package/perl-image-magick
  SUBMENU:=Perl
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Perl Image-Magick
  URL:=https://metacpan.org/dist/Image-Magick
  DEPENDS:=perl +perlbase-base +imagemagick +libxml2 +libfreetype
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(SED) 's,@STAGING_DIR@,$(STAGING_DIR)/usr,g' $(PKG_BUILD_DIR)/Makefile.PL
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
