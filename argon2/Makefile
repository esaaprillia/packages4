include $(TOPDIR)/rules.mk

PKG_NAME:=argon2
PKG_VERSION:=20190702
PKG_RELEASE:=1

PKG_SOURCE:=phc-winner-argon2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/P-H-C/phc-winner-argon2/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 OR CC0-1.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/phc-winner-argon2-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/phc-winner-argon2-$(PKG_VERSION)

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/argon2
	SECTION:=utils
	CATEGORY:=Utilities
	DEPENDS:=
	TITLE:=The password hash Argon2, winner of PHC
	URL:=https://github.com/P-H-C/phc-winner-argon2
endef

define Package/argon2/description
	This is the reference C implementation of Argon2, the password-hashing function that won the Password Hashing Competition (PHC).
endef

define Build/Compile
	$(MAKE_VARS) $(MAKE) OPTTARGET=none ARGON2_VERSION="$(PKG_VERSION)" -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_FLAGS)
endef

define Host/Compile
	$(HOST_MAKE_VARS) $(MAKE) OPTTARGET=none ARGON2_VERSION="$(PKG_VERSION)" -C $(HOST_BUILD_DIR)/$(HOST_MAKE_PATH) $(HOST_MAKE_FLAGS)
endef

define Build/Install
	$(MAKE_VARS) $(MAKE) OPTTARGET=none LIBRARY_REL=lib DESTDIR="$(PKG_INSTALL_DIR)" install -C $(PKG_BUILD_DIR)/$(MAKE_PATH) $(MAKE_INSTALL_FLAGS)
endef

define Host/Install
	$(HOST_MAKE_VARS) $(MAKE) OPTTARGET=none LIBRARY_REL=lib DESTDIR="$(HOST_BUILD_PREFIX)" install -C $(HOST_BUILD_DIR)/$(HOST_MAKE_PATH) $(HOST_MAKE_FLAGS)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/*.pc $(1)/usr/lib/pkgconfig/
endef

define Package/argon2/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/argon2 $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,argon2))
