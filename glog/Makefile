include $(TOPDIR)/rules.mk

PKG_NAME:=glog
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google/glog/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/glog
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ implementation of the Google logging module
	DEPENDS:=+gflags +libunwind +libucontext
	URL:=http://google.github.io/glog/
endef

define Package/glog/description
	Google Logging (glog) was a C++14 library that implements application-level logging. The library provided logging APIs based on C++-style streams and various helper macros.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True \
	-DWITH_GFLAGS=ON \
	-DWITH_THREADS=ON \
	-DWITH_TLS=ON \
	-DWITH_PKGCONFIG=ON \
	-DPRINT_UNSYMBOLIZED_STACK_TRACES=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libglog.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libglog.pc
endef

define Package/glog/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,glog))
