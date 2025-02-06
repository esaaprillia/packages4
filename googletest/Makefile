include $(TOPDIR)/rules.mk

PKG_NAME:=googletest
PKG_VERSION:=1.15.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/googletest/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/googletest
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=GoogleTest - Google Testing and Mocking Framework
	DEPENDS:=+libstdcpp
	URL:=https://github.com/google/googletest
endef

define Package/googletest/description
	Google Test - C++ testing utility
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-Dgtest_build_tests=ON \
	-DBUILD_GMOCK=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/{gmock,gtest} \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
endef

define Package/googletest/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,googletest))
