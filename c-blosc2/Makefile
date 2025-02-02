include $(TOPDIR)/rules.mk

PKG_NAME:=c-blosc2
PKG_VERSION:=2.15.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Blosc/c-blosc2/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/c-blosc2
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A fast, compressed, persistent binary data store library for C.
	DEPENDS:=+liblz4 +zlib +libzstd
	URL:=https://www.blosc.org/
endef

define Package/c-blosc2/description
	Blosc is a high performance compressor optimized for binary data (i.e. floating point numbers, integers and booleans, although it can handle string data too). It has been designed to transmit data to the processor cache faster than the traditional, non-compressed, direct memory fetch approach via a memcpy() OS call. Blosc main goal is not just to reduce the size of large datasets on-disk or in-memory, but also to accelerate memory-bound computations.
	C-Blosc2 is the new major version of C-Blosc, and is backward compatible with both the C-Blosc1 API and its in-memory format. However, the reverse thing is generally not true for the format; buffers generated with C-Blosc2 are not format-compatible with C-Blosc1 (i.e. forward compatibility is not supported). In case you want to ensure full API compatibility with C-Blosc1 API, define the BLOSC1_COMPAT symbol.
endef

CMAKE_HOST_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED=OFF \
	-DBUILD_STATIC=ON

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_STATIC=OFF \
	-DPREFER_EXTERNAL_LZ4=ON \
	-DPREFER_EXTERNAL_ZLIB=ON \
	-DPREFER_EXTERNAL_ZSTD=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/c-blosc2/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,c-blosc2))
$(eval $(call HostBuild))
