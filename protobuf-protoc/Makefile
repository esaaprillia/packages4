include $(TOPDIR)/rules.mk

PKG_NAME:=protobuf
PKG_VERSION:=3.21.9
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/protocolbuffers/protobuf.git
PKG_SOURCE_VERSION:=90b73ac3f0b10320315c2ca0d03a5a9b095d2f66
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_SOURCE_SUBDIR:=cmake

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/protobuf-protoc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A structured data encoding library
	DEPENDS:=+zlib +libpthread +libatomic +libstdcpp
	URL:=https://github.com/google/protobuf
endef

define Package/protobuf-protoc/description
Protocol Buffers are a way of encoding structured data in an efficient
yet extensible format. Google uses Protocol Buffers for almost all
of its internal RPC protocols and file formats.
endef

CMAKE_HOST_OPTIONS += \
	-Dprotobuf_BUILD_PROTOC_BINARIES=ON \
	-Dprotobuf_BUILD_TESTS=OFF \
	-DBUILD_SHARED_LIBS=OFF \
	-DCMAKE_INSTALL_LIBDIR=lib

CMAKE_OPTIONS += \
	-Dprotobuf_BUILD_PROTOC_BINARIES=ON \
	-Dprotobuf_BUILD_TESTS=OFF \
	-Dprotobuf_WITH_ZLIB=ON \
	-DBUILD_SHARED_LIBS=ON

TARGET_LDFLAGS += -latomic

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/protobuf.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/protobuf.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/protobuf-lite.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/protobuf-lite.pc
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,protobuf-protoc))
