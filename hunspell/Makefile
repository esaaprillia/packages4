include $(TOPDIR)/rules.mk

PKG_NAME:=hunspell
PKG_VERSION:=1.7.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/hunspell/hunspell/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later OR GPL-2.0-or-later OR MPL-1.1
PKG_LICENSE_FILES:=COPYING COPYING.LESSER COPYING.MPL

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/hunspell
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The most popular spellchecking library.
	DEPENDS:=+libreadline +libncurses $(ICONV_DEPENDS) $(INTL_DEPENDS)
	URL:=https://github.com/hunspell/hunspell
endef

define Package/hunspell/description
Spell checker and morphological analyzer library and program
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--disable-static \
	--with-ui \
	--with-readline

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/hunspell \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/hunspell.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/hunspell.pc
endef

define Package/hunspell/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,hunspell))
