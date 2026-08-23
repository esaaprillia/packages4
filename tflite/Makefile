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

PKG_BUILD_DEPENDS:=flatbuffers/host protobuf-protoc/host swig/host python-pybind11/host numpy/host python-pybind11
PKG_BUILD_DIR:=$(BUILD_DIR)/LiteRT-$(PKG_VERSION)

PYTHON3_PKG_BUILD:=0
CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tflite

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/tflite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Google's on-device runtime for high-performance ML & GenAI deployment on edge platforms.
	DEPENDS:=+libstdcpp +abseil-cpp +flatbuffers +python3-numpy +libjpeg-turbo +zlib
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
	-DCMAKE_C_FLAGS="-I$(PYTHON3_INC_DIR) -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/pybind11/include -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/include" \
	-DCMAKE_CXX_FLAGS="-I$(PYTHON3_INC_DIR) -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/pybind11/include -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/include" \
	-DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)"

define Build/Compile
	$(call Build/Compile/Default)
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	cmake --build build --target _pywrap_tensorflow_interpreter_wrapper
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
endef

define Package/tflite/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/build/libtensorflow-lite.so $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/build/_deps/farmhash-build/libfarmhash.so $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tflite))
