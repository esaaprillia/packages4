include $(TOPDIR)/rules.mk

PKG_NAME:=libde265
PKG_VERSION:=1.0.16
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/strukturag/libde265/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/libde265
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open h.265 video codec implementation
	DEPENDS:=+libstdcpp
	URL:=https://github.com/strukturag/libde265
endef

define Package/libde265/description
libde265 is an open source implementation of the h.265 video codec. It is written from scratch and has a plain C API to enable a simple integration into other software.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib \
	  $(1)/usr/include

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libde265 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libde265.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libde265.pc
endef

define Package/libde265/install
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

$(eval $(call BuildPackage,libde265))
