include $(TOPDIR)/rules.mk

PKG_NAME:=liblzf
PKG_VERSION:=3.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://dist.schmorp.de/liblzf/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/liblzf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=LibLZF is a very small data compression library.
	DEPENDS:=
	URL:=http://software.schmorp.de/pkg/liblzf.html
endef

define Package/liblzf/description
	LibLZF is a very small data compression library. It consists of only two .c and two .h files and is very easy to incorporate into your own programs.
	The compression algorithm is very, very fast, yet still written in portable C.
	Last not least, it is freely usable, unlike most other compression libraries which are under the GPL, this library uses a BSD-type license, so you can include it in your programs without worrying.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/liblzf/install
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

$(eval $(call BuildPackage,liblzf))
