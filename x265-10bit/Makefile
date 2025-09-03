include $(TOPDIR)/rules.mk

PKG_NAME:=x265-10bit
PKG_VERSION:=4.1
PKG_RELEASE:=2

PKG_SOURCE:=x265_$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://bitbucket.org/multicoreware/x265_git/downloads/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=nasm/host x265-12bit

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/x265_$(PKG_VERSION)

CMAKE_BINARY_SUBDIR := build-10
CMAKE_SOURCE_SUBDIR := source

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/x265-10bit
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open Source H265/HEVC video encoder
	DEPENDS:=+numactl +libstdcpp
	URL:=https://bitbucket.org/multicoreware/x265_git
endef

define Package/x265-10bit/description
Open Source H265/HEVC video encoder
endef

CMAKE_OPTIONS += -Wno-dev \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DHIGH_BIT_DEPTH=TRUE \
	-DEXPORT_C_API=FALSE \
	-DENABLE_CLI=FALSE \
	-DENABLE_SHARED=FALSE \
	-DENABLE_ASSEMBLY=OFF \
	-DCMAKE_ASM_NASM_FLAGS=-w-macro-params-legacy \
	-DENABLE_PIC=ON

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libx265.a $(1)/usr/lib/libx265_main10.a
endef

$(eval $(call BuildPackage,x265-10bit))
