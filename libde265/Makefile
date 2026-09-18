include $(TOPDIR)/rules.mk

PKG_NAME:=libde265
PKG_VERSION:=1.1.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/strukturag/libde265/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

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

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libde265.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libde265.pc
endef

define Package/libde265/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libde265))
