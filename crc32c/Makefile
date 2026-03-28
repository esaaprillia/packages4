include $(TOPDIR)/rules.mk

PKG_NAME:=crc32c
PKG_VERSION:=1.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/crc32c/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/crc32c
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=CRC32C implementation with support for CPU-specific acceleration instructions
	DEPENDS:=
	URL:=https://github.com/google/crc32c
endef

define Package/crc32c/description
	This project collects a few CRC32C implementations under an umbrella that dispatches to a suitable implementation based on the host computer's hardware capabilities.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCRC32C_BUILD_TESTS=OFF \
	-DCRC32C_BUILD_BENCHMARKS=OFF \
	-DCRC32C_USE_GLOG=OFF \
	-DCRC32C_INSTALL=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/crc32c/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,crc32c))
