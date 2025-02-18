include $(TOPDIR)/rules.mk

PKG_NAME:=psimd
PKG_VERSION:=2020-05-17
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/psimd.git
PKG_SOURCE_VERSION:=072586a71b55b7f8c584153d223e95687148a900
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/psimd
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Portable 128-bit SIMD intrinsics
	DEPENDS:=
	URL:=https://github.com/Maratyszcza/psimd
endef

define Package/psimd/description
Portable 128-bit SIMD intrinsics
endef

CMAKE_OPTIONS += \
	-Wno-dev

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/psimd.h \
	  $(1)/usr/include/
endef

$(eval $(call BuildPackage,psimd))
