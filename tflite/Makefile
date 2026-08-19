include $(TOPDIR)/rules.mk

PKG_NAME:=tflite
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PKG_SOURCE:=LiteRT-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/google-ai-edge/LiteRT/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=flatbuffers-flatc/host protobuf-protoc/host
PKG_BUILD_DIR:=$(BUILD_DIR)/LiteRT-$(PKG_VERSION)

#CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tflite

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/tflite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Google's on-device runtime for high-performance ML & GenAI deployment on edge platforms.
	DEPENDS:=+libstdcpp
	URL:=https://github.com/google-ai-edge/LiteRT
endef

define Package/tflite/description
	LiteRT, successor to TensorFlow Lite. is Google's On-device framework for high-performance ML & GenAI deployment on edge platforms, via efficient conversion, runtime, and optimization
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_DOC=OFF \
	-DBUILD_DOCS=OFF \
	-DBUILD_EXAMPLE=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_C_FLAGS=-fPIC -DCMAKE_CXX_FLAGS=-fPIC \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
endef

define Package/tflite/install
	$(INSTALL_DIR) $(1)/usr/lib
	ls $(PKG_BUILD_DIR)/tflite/*
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/tflite/libtensorflow-lite.so $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tflite))
