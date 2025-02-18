include $(TOPDIR)/rules.mk

PKG_NAME:=fxdiv
PKG_VERSION:=2020-12-09
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/FXdiv.git
PKG_SOURCE_VERSION:=63058eff77e11aa15bf531df5dd34395ec3017c8
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/fxdiv
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C99/C++ header-only library for division via fixed-point multiplication by inverse
	DEPENDS:=
	URL:=https://github.com/Maratyszcza/FXdiv/
endef

define Package/fxdiv/description
	On modern CPUs and GPUs integer division is several times slower than multiplication. FXdiv implements an algorithm to replace an integer division with a multiplication and two shifts. This algorithm improves performance when an application performs repeated divisions by the same divisor.
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DFXDIV_BUILD_TESTS=OFF \
	-DFXDIV_BUILD_BENCHMARKS=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/fxdiv \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,*.so*} \
	  $(1)/usr/lib/
endef

define Package/fxdiv/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,fxdiv))
