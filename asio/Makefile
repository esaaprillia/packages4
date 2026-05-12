include $(TOPDIR)/rules.mk

PKG_NAME:=asio
PKG_VERSION:=1.36.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://sourceforge.net/projects/asio/files/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=COPYING LICENSE_1_0.txt

PKG_BUILD_DEPENDS:=boost openssl
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/asio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Asio C++ Library
	DEPENDS:=
	URL:=http://think-async.com/Asio
endef

define Package/asio/description
Asio is a cross-platform C++ library for network and low-level I/O programming that provides developers with a consistent asynchronous model using a modern C++ approach.
endef

CONFIGURE_ARGS += \
	--prefix=/usr

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/asio* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/share/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/share/pkgconfig/asio.pc $(1)/usr/share/pkgconfig/asio.pc
endef

$(eval $(call BuildPackage,asio))
