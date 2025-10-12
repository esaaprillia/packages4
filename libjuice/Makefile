include $(TOPDIR)/rules.mk

PKG_NAME:=libjuice
PKG_VERSION:=1.6.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/paullouisageneau/libjuice/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libjuice
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=JUICE is a UDP Interactive Connectivity Establishment library
	DEPENDS:=+libstdcpp
	URL:=https://github.com/paullouisageneau/libjuice
endef

define Package/libjuice/description
	libjuice - UDP Interactive Connectivity Establishment
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DNO_TESTS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/libjuice/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libjuice))
