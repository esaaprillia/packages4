include $(TOPDIR)/rules.mk

PKG_NAME:=wiredtiger
PKG_VERSION:=11.3.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/wiredtiger/wiredtiger/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR:=build

PKG_BUILD_DEPENDS:=swig/host python3
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/wiredtiger
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=WiredTiger's source tree
	DEPENDS:=+libstdcpp +liblz4 +snappy +zlib +libzstd +libsodium
	URL:=https://github.com/wiredtiger/wiredtiger
endef

define Package/wiredtiger/description
	High performance, scalable, NoSQL, extensible platform for data management
endef

#TARGET_CFLAGS +=-D_LARGEFILE64_SOURCE

CMAKE_OPTIONS += \
	-DBUILD_SHARED=ON \
	-DCMAKE_C_FLAGS="--param=min-pagesize=0" \
	-DHAVE_BUILTIN_EXTENSION_LZ4=1 \
	-DHAVE_BUILTIN_EXTENSION_SNAPPY=1 \
	-DHAVE_BUILTIN_EXTENSION_ZLIB=1 \
	-DHAVE_BUILTIN_EXTENSION_ZSTD=1 \
	-Dcan_run_HAVE_PTHREAD_COND_MONOTONIC=0 \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/wiredtiger.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/wiredtiger.pc
endef

define Package/wiredtiger/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,wiredtiger))
