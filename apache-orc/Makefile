include $(TOPDIR)/rules.mk

PKG_NAME:=apache-orc
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PKG_SOURCE:=orc-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/apache/orc/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/orc-$(PKG_VERSION)

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=protobuf/host

CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/apache-orc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Apache ORC - the smallest
	DEPENDS:=+abseil-cpp +liblz4 +protobuf +snappy +zlib +libzstd
	URL:=https://orc.apache.org/
endef

define Package/apache-orc/description
	ORC is a self-describing type-aware columnar file format designed for Hadoop workloads.
endef

TARGET_LDFLAGS += -Wl,--copy-dt-needed-entries

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=True \
	-DCMAKE_CXX_STANDARD=17 \
	-DSNAPPY_HOME="$(STAGING_DIR)/usr" \
	-DZLIB_HOME="$(STAGING_DIR)/usr" \
	-DLZ4_HOME="$(STAGING_DIR)/usr" \
	-DZSTD_HOME="$(STAGING_DIR)/usr" \
	-DPROTOBUF_HOME="$(STAGING_DIR)/usr" \
	-DORC_PREFER_STATIC_PROTOBUF=OFF \
	-DORC_PREFER_STATIC_SNAPPY=OFF \
	-DORC_PREFER_STATIC_LZ4=OFF \
	-DORC_PREFER_STATIC_ZSTD=OFF \
	-DORC_PREFER_STATIC_ZLIB=OFF \
	-DBUILD_LIBHDFSPP=OFF \
	-DBUILD_JAVA=OFF \
	-DINSTALL_VENDORED_LIBS=OFF \
	-DBUILD_POSITION_INDEPENDENT_LIB=ON \
	-DSTOP_BUILD_ON_WARNING=OFF \
	-DBUILD_CPP_TESTS=OFF \
	-DHAS_PRE_1970_EXITCODE=0 \
	-DHAS_POST_2038_EXITCODE=0 \
	-DPROTOBUF_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(RM) $(STAGING_DIR)/usr/lib/cmake/orc/FindSnappy.cmake
endef

define Package/apache-orc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	#$(INSTALL_DIR) $(1)/usr/lib
	#$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,apache-orc))
