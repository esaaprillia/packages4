include $(TOPDIR)/rules.mk

PKG_NAME:=grpc
PKG_VERSION:=1.75.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/grpc/grpc/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/grpc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=C++ based gRPC (C++, Python, Ruby, Objective-C, PHP, C#)
	DEPENDS:=+libatomic +libcares +libopenssl +libopenssl-legacy +libstdcpp +abseil-cpp +protobuf +re2 +zlib
	URL:=https://grpc.io/
endef

define Package/grpc/description
	gRPC is a modern, open source, high-performance remote procedure call (RPC) framework that can run anywhere. gRPC enables client and server applications to communicate transparently, and simplifies the building of connected systems.
endef

CMAKE_OPTIONS += \
	-DCMAKE_CXX_STANDARD=17 \
	-DBUILD_SHARED_LIBS=True \
	-DgRPC_INSTALL=ON \
	-DgRPC_CARES_PROVIDER=package \
	-DgRPC_PROTOBUF_PROVIDER=package \
	-DgRPC_SSL_PROVIDER=package \
	-DgRPC_ZLIB_PROVIDER=package \
	-DgRPC_ABSL_PROVIDER=package \
	-DgRPC_BENCHMARK_PROVIDER=package \
	-DgRPC_RE2_PROVIDER=package \
	-DgRPC_USE_SYSTEMD=OFF \
	-DgRPC_BUILD_TESTS=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/gpr*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/gpr*.pc
endef

define Package/grpc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,grpc))
