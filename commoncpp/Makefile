include $(TOPDIR)/rules.mk

PKG_NAME:=commoncpp
PKG_VERSION:=7.0.1
PKG_RELEASE:=1

#PKG_SOURCE:=ZRTPCPP-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/wernerd/ZRTPCPP/archive/$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://https.git.savannah.gnu.org/git/commoncpp.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=e62e01dbec3e6bd7c7098926f1ad065a2d28657d
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING COPYING.LESSER COPYRIGHT

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/commoncpp
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Class framework designed for telephony applications
	DEPENDS:=+libstdcpp +libopenssl
	URL:=https://www.gnu.org/software/commoncpp/
endef

define Package/commoncpp/description
GNU Common C++ is a class framework that was specifically designed for telephony applications.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED=ON \
	-DBUILD_TESTING=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/lib/pkgconfig/ucommon.pc
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/lib/pkgconfig/ucommon.pc
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/bin/ucommon-config
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/bin/ucommon-config
	$(SED) 's,/usr/include,$(STAGING_DIR)/usr/include,g' $(1)/usr/bin/commoncpp-config
	$(SED) 's,/usr/lib,$(STAGING_DIR)/usr/lib,g' $(1)/usr/bin/commoncpp-config
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/ucommon-config
	$(SED) 's,^\(prefix\|exec_prefix\)=.*,\1=$(STAGING_DIR)/usr,g' $(1)/usr/bin/commoncpp-config
	$(INSTALL_DIR) $(2)/bin
	$(LN) ../../usr/bin/ucommon-config $(2)/bin/ucommon-config
	$(LN) ../../usr/bin/commoncpp-config $(2)/bin/commoncpp-config
endef

define Package/commoncpp/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,commoncpp))
