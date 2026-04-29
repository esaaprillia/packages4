include $(TOPDIR)/rules.mk

PKG_NAME:=bzrtp
PKG_VERSION:=5.4.107
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://gitlab.linphone.org/BC/public/bzrtp/-/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/bzrtp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=BZRTP is an opensource implementation of ZRTP keys exchange protocol
	DEPENDS:=+bctoolbox +libstdcpp +libsqlite3
	URL:=https://gitlab.linphone.org/BC/public/bzrtp
endef

define Package/bzrtp/description
The library is written in C and C++ is fully portable and can be executed  on many platforms including both ARM  processor and x86.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=YES \
	-DENABLE_STRICT=OFF \
	-DENABLE_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libbzrtp.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libbzrtp.pc
endef

define Package/bzrtp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,bzrtp))
