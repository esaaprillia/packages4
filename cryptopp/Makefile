include $(TOPDIR)/rules.mk

PKG_NAME:=cryptopp
PKG_VERSION:=8.9.0
PKG_RELEASE:=1

#PKG_SOURCE:=phc-winner-argon2-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/P-H-C/phc-winner-argon2/archive/$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/weidai11/cryptopp.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=843d74c7c97f9e19a615b8ff3c0ca06599ca501b
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0
PKG_LICENSE_FILES:=License.txt

#PKG_BUILD_DIR:=$(BUILD_DIR)/phc-winner-argon2-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/cryptopp
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=+libstdcpp
	TITLE:=free C++ class library of cryptographic schemes
	URL:=https://github.com/weidai11/cryptopp
endef

define Package/cryptopp/description
	Crypto++ Library is a free C++ class library of cryptographic schemes.
endef

define Build/Compile
	$(CONFIGURE_VARS) $(MAKE) dynamic libcryptopp.pc CXXFLAGS="$(TARGET_CXXFLAGS)" PREFIX="/usr" -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS)
endef

define Build/Install
	$(MAKE_VARS) $(MAKE) DESTDIR="$(PKG_INSTALL_DIR)" PREFIX=/usr install-lib -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_INSTALL_FLAGS)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/cryptopp/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,cryptopp))
