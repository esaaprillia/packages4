include $(TOPDIR)/rules.mk

PKG_NAME:=cmocka
PKG_VERSION:=2.0.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-r$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://cmocka.org/files/2.0/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/cmocka
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Elegant unit testing framework for C with support for mock objects
	DEPENDS:=
	URL:=https://cmocka.org/
endef

define Package/cmocka/description
	an elegant unit testing framework for C with support for mock objects. It only requires the standard C library, works on a range of computing platforms (including embedded) and with different compilers.
endef

CMAKE_OPTIONS += \
	-DENABLE_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/cmocka.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/cmocka.pc
endef

define Package/cmocka/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,cmocka))
