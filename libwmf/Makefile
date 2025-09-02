include $(TOPDIR)/rules.mk

PKG_NAME:=libwmf
PKG_VERSION:=0.2.13
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/caolanm/libwmf/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libwmf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A library for parsing Windows MetaFile vector graphics (WMF).
	DEPENDS:=+libexpat +libfreetype +libjpeg-turbo +libpng +zlib
	URL:=https://github.com/caolanm/libwmf
endef

define Package/libwmf/description
A library for parsing Windows MetaFile vector graphics (WMF).
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--with-gsfontdir=/usr/share/fonts/Type1 \
	--with-fontdir=/usr/share/fonts/Type1 \
	--with-gsfontmap=/usr/share/ghostscript/9.10/lib/Fontmap.GS

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(2)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/include

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libwmf \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/libwmf-config \
	  $(1)/usr/bin/
	
	$(SED) \
	  's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' \
	  $(1)/usr/bin/libwmf-config
	
	$(LN) ../../usr/bin/libwmf-config $(2)/bin/libwmf-config
	
	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libwmf.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libwmf.pc
endef

define Package/libwmf/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/{libwmf-fontmap,wmf2*} \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/* \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,libwmf))
