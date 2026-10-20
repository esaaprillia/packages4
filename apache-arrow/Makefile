include $(TOPDIR)/rules.mk

PKG_NAME:=apache-arrow
PKG_VERSION:=26.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/apache/arrow/releases/download/apache-arrow-$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=boost flatbuffers rapidjson xsimd googletest

CMAKE_BINARY_SUBDIR := build-cpp
CMAKE_SOURCE_SUBDIR := cpp

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/apache-arrow
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Apache Arrow is the universal columnar format and multi-language toolbox for fast data interchange and in-memory analytics
	DEPENDS:=+libstdcpp +abseil-cpp +apache-orc +brotli +libbz2 +glog +grpc +utf8proc +liblz4 +libopenssl +protobuf +re2 +snappy +thrift +libzstd +zlib +simdjson +uriparser +aws-sdk-cpp +libjemalloc
	URL:=https://arrow.apache.org/
endef

define Package/apache-arrow/description
	Apache Arrow is a universal columnar format and multi-language toolbox for fast data interchange and in-memory analytics. It contains a set of technologies that enable data systems to efficiently store, process, and move data.
endef

CMAKE_OPTIONS += \
	-DARROW_SIMD_LEVEL=NONE \
	-DARROW_RUNTIME_SIMD_LEVEL=MAX \
	-DARROW_DEPENDENCY_SOURCE=SYSTEM \
	-DARROW_BUILD_STATIC=OFF \
	-DARROW_BUILD_TESTS=ON \
	-DARROW_BUILD_UTILITIES=ON \
	-DARROW_COMPUTE=ON \
	-DARROW_CSV=ON \
	-DARROW_FILESYSTEM=ON \
	-DARROW_FLIGHT=ON \
	-DARROW_FLIGHT_SQL=ON \
	-DARROW_HDFS=ON \
	-DARROW_IPC=ON \
	-DARROW_JSON=ON \
	-DARROW_ORC=ON \
	-DARROW_PARQUET=ON \
	-DARROW_S3=ON \
	-DARROW_SUBSTRAIT=ON \
	-DARROW_TENSORFLOW=ON \
	-DARROW_USE_GLOG=ON \
	-DARROW_WITH_BROTLI=ON \
	-DARROW_WITH_BZ2=ON \
	-DARROW_WITH_LZ4=ON \
	-DARROW_WITH_SNAPPY=ON \
	-DARROW_WITH_ZLIB=ON \
	-DARROW_WITH_ZSTD=ON \
	-DPARQUET_REQUIRE_ENCRYPTION=ON \
	-DSNAPPY_HOME="$(STAGING_DIR)/usr" \
	-DARROW_GRPC_CPP_PLUGIN="$(STAGING_DIR_HOSTPKG)/bin/grpc_cpp_plugin" \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/arrow*.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/arrow*.pc
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/parquet.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/parquet.pc
endef

define Package/apache-arrow/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,apache-arrow))
