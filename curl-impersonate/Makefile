include $(TOPDIR)/rules.mk

PKG_NAME:=curl-impersonate
PKG_VERSION:=2.1.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/lexiforest/curl-impersonate/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake-golang.mk

define Package/curl-impersonate
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=This is an active fork of curl-impersonate.
	DEPENDS:=+libstdcpp
	URL:=https://curl-impersonate.readthedocs.io/
endef

define Package/curl-impersonate/description
	An active fork of curl-impersonate with more versions and build targets. A series of patches that make curl requests look like Chrome, Firefox and Safari.
endef

MAKE_FLAGS += BUILD_DIR=$(PKG_BUILD_DIR)/build

CMAKE_OPTIONS += \
	-DCMAKE_C_FLAGS=-fPIC \
	-DCMAKE_CXX_FLAGS=-fPIC

define Build/Compile
	mkdir -p $(PKG_BUILD_DIR)/build
	$(MAKE) -C $(PKG_BUILD_DIR) prepare-libidn2 BUILD_DIR=$(PKG_BUILD_DIR)/build
	$(call Build/Configure/Cmake)
	$(call Build/Compile/Cmake)
	$(call Build/Install/Cmake)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/curl-impersonate/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,curl-impersonate))
