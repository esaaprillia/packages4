include $(TOPDIR)/rules.mk

PKG_NAME:=musl-obstack
PKG_VERSION:=1.2.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/void-linux/musl-obstack/archive/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/musl-obstack
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A standalone library to implement GNU libc's obstack
	DEPENDS:=
	URL:=https://github.com/void-linux/musl-obstack
endef

define Package/musl-obstack/description
	The musl-obstack package is a copy + paste of the obstack functions and macros found in GNU gcc libiberty library for use with musl libc.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/obstack.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/musl-obstack.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/musl-obstack.pc
endef

define Package/musl-obstack/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,musl-obstack))
