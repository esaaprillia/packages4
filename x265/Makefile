include $(TOPDIR)/rules.mk

PKG_NAME:=x265
PKG_VERSION:=4.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://bitbucket.org/multicoreware/x265_git/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build
CMAKE_SOURCE_SUBDIR := source

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/x265
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open Source H265/HEVC video encoder
	DEPENDS:=+numactl
	URL:=https://bitbucket.org/multicoreware/x265_git
endef

define Package/x265/description
Open Source H265/HEVC video encoder
endef

CMAKE_OPTIONS += \
	-DHIGH_BIT_DEPTH=TRUE \
	-DENABLE_ASSEMBLY=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/x265.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/x265.pc
endef

define Package/x265/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/x265 \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,x265))
