include $(TOPDIR)/rules.mk

PKG_NAME:=highs
PKG_VERSION:=1.13.1
PKG_RELEASE:=1

PKG_SOURCE:=HiGHS-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ERGO-Code/HiGHS/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/HiGHS-$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/highs
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Linear optimization software
	DEPENDS:=+libstdcpp +zlib
	URL:=https://github.com/ERGO-Code/HiGHS
endef

define Package/highs/description
	HiGHS - Linear optimization software
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/highs/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/highs $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,highs))
