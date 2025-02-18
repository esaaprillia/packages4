include $(TOPDIR)/rules.mk

PKG_NAME:=pthreadpool
PKG_VERSION:=2025-02-14
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/pthreadpool.git
PKG_SOURCE_VERSION:=5703882e34c104137669d306536c65362413d976
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=fxdiv

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
	  $(PKG_INSTALL_DIR)/usr/include/pthreadpool.h \
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
