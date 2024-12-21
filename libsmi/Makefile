include $(TOPDIR)/rules.mk

PKG_NAME:=libsmi
PKG_VERSION:=0.5.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.ibr.cs.tu-bs.de/projects/libsmi/download/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libsmi
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=libsmi - A Library to Access SMI MIB Information
	DEPENDS:=
	URL:=https://www.ibr.cs.tu-bs.de/projects/libsmi/
endef

define Package/libsmi/description
	Library to access SMI management information
endef

CONFIGURE_ARGS += \
	--prefix=/usr \
	--enable-shared \
	--disable-static \
	--with-mibdir=/usr/share/libsmi/mibs \
	--with-pibdir=/usr/share/libsmi/pibs \
	--with-yangdir=/usr/share/libsmi/yang

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{smi.h,yang.h} \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/aclocal \
	  $(1)/usr/share/
endef

define Package/libsmi/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/libsmi \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,libsmi))
