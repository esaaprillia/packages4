include $(TOPDIR)/rules.mk

PKG_NAME:=android-tools
PKG_VERSION:=35.0.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/nmeum/android-tools/releases/download/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=protobuf/host googletest

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/android-tools
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Unoffical CMake-based build system for android command line utilities
	DEPENDS:=+protobuf +brotli +libpcre2 +libzstd +liblz4 +libfmt
	URL:=https://github.com/nmeum/android-tools
endef

define Package/android-tools/description
	Git repository to make it easier to package certain command line utilities provided by android-tools.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
endef

CMAKE_OPTIONS += \
	-DANDROID_TOOLS_USE_BUNDLED_LIBUSB=ON

define Package/android-tools/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/{android-tools,bash-completion} $(1)/usr/share/
endef

$(eval $(call BuildPackage,android-tools))
