include $(TOPDIR)/rules.mk

PKG_NAME:=libdecaf
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tgz
#PKG_SOURCE_URL:=https://sourceforge.net/projects/ed448goldilocks/files/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://git.code.sf.net/p/ed448goldilocks/code
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=ae7b1af200d068b8128791e6eb8b2cf946de3c0c
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=python3
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/libdecaf
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Decaf elliptic curve library
	DEPENDS:=
	URL:=https://sourceforge.net/projects/ed448goldilocks/
endef

define Package/libdecaf/description
The libdecaf library is for elliptic curve research and practical application.
It currently supports Ed448-Goldilocks and Curve25519.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DENABLE_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libdecaf/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libdecaf))
