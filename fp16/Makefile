include $(TOPDIR)/rules.mk

PKG_NAME:=fp16
#PKG_VERSION:=2024-06-20
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/FP16.git
PKG_SOURCE_DATE:=2026-06-20
PKG_SOURCE_VERSION:=782eea126dc5c755827be751a099eb01826175cf
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/fp16
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Conversion to/from half-precision floating point formats
	DEPENDS:=
	URL:=https://github.com/Maratyszcza/FP16
endef

define Package/fp16/description
Header-only library for conversion to/from half-precision floating point formats
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DFP16_BUILD_TESTS=OFF \
	-DFP16_BUILD_BENCHMARKS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call BuildPackage,fp16))
