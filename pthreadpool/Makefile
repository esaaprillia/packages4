include $(TOPDIR)/rules.mk

PKG_NAME:=pthreadpool
PKG_VERSION:=2023-08-29
PKG_RELEASE:=2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/pthreadpool.git
PKG_SOURCE_VERSION:=560c60d342a76076f0557a3946924c6478470044
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=fxdiv fp16

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/pthreadpool
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Portable (POSIX/Windows/Emscripten) thread pool for C/C++
	DEPENDS:=
	URL:=https://github.com/Maratyszcza/pthreadpool
endef

define Package/pthreadpool/description
	pthreadpool is a portable and efficient thread pool implementation. It provides similar functionality to #pragma omp parallel for, but with additional features.
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DPTHREADPOOL_BUILD_TESTS=OFF \
	-DPTHREADPOOL_BUILD_BENCHMARKS=OFF \
	-DPTHREADPOOL_USE_SYSTEM_LIBS=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/pthreadpool/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,pthreadpool))
