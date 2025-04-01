include $(TOPDIR)/rules.mk

PKG_NAME:=c-blosc
PKG_VERSION:=1.21.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Blosc/c-blosc/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/c-blosc
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A blocking, shuffling and loss-less compression library that can be faster than `memcpy()`.
	DEPENDS:=+liblz4 +zlib +libzstd
	URL:=https://www.blosc.org/
endef

define Package/c-blosc/description
	Blosc is a high performance compressor optimized for binary data. It has been designed to transmit data to the processor cache faster than the traditional, non-compressed, direct memory fetch approach via a memcpy() OS call. Blosc is the first compressor (that I'm aware of) that is meant not only to reduce the size of large datasets on-disk or in-memory, but also to accelerate memory-bound computations.
	It uses the blocking technique so as to reduce activity in the memory bus as much as possible. In short, this technique works by dividing datasets in blocks that are small enough to fit in caches of modern processors and perform compression / decompression there. It also leverages, if available, SIMD instructions (SSE2, AVX2) and multi-threading capabilities of CPUs, in order to accelerate the compression / decompression process to a maximum.
endef

CMAKE_HOST_OPTIONS += \
	-DBUILD_SHARED=OFF \
	-DBUILD_STATIC=ON \
	-DBUILD_BENCHMARKS=OFF

CMAKE_OPTIONS += \
	-DBUILD_STATIC=OFF \
	-DBUILD_BENCHMARKS=OFF \
	-DPREFER_EXTERNAL_LZ4=ON \
	-DPREFER_EXTERNAL_ZLIB=ON \
	-DPREFER_EXTERNAL_ZSTD=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/blosc.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/blosc.pc
endef

define Package/c-blosc/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,c-blosc))
$(eval $(call HostBuild))
