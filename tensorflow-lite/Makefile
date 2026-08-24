include $(TOPDIR)/rules.mk

PKG_NAME:=tensorflow
PKG_VERSION:=2.21.0
PKG_RELEASE:=1

#PKG_SOURCE:=tensorflow-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/tensorflow/tensorflow/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tensorflow/tensorflow.git
PKG_SOURCE_VERSION:=64fbb70af661b3f64be626fa1172d43b882c39bb
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=flatbuffers/host protobuf/host swig/host python-pybind11/host numpy/host python-pybind11

PYTHON3_PKG_BUILD:=0
CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tensorflow/lite

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/tensorflow-lite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An Open Source Machine Learning Framework for Everyone
	DEPENDS:=+libstdcpp +abseil-cpp +flatbuffers +protobuf
	URL:=https://www.tensorflow.org/lite/
endef

define Package/tensorflow-lite/description
	TensorFlow Lite is TensorFlow's lightweight solution for mobile and embedded devices. It enables low-latency inference of on-device machine learning models with a small binary size and fast performance supporting hardware acceleration.
endef

define Package/python3-tensorflow-lite
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Python bindings tensorflow-lite
	DEPENDS:=+python3-light +python3-numpy +libjpeg-turbo +zlib +tensorflow-lite
	URL:=https://www.tensorflow.org/lite/
endef

define Package/python3-tensorflow-lite/description
	Python bindings tensorflow-lite
endef

PYTHON3_PKG_SETUP_VARS += PROJECT_NAME=tflite_runtime PACKAGE_VERSION="$(PKG_VERSION)"

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_BUILD_DIR)/build-pip/tflite_runtime
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/tools/pip_package/setup_with_binary.py $(PKG_BUILD_DIR)/build-pip/setup.py
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/tools/pip_package/MANIFEST.in $(PKG_BUILD_DIR)/build-pip/
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/python/interpreter_wrapper $(PKG_BUILD_DIR)/build-pip/
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/python/interpreter.py $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/python/metrics/{metrics_interface.py,metrics_portable.py} $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	echo "__version__ = '$(PKG_VERSION)'" >> $(PKG_BUILD_DIR)/build-pip/tflite_runtime/__init__.py
endef

PYTHON3_PKG_WHEEL_NAME:=tflite_runtime
PYTHON3_PKG_WHEEL_VERSION:=2.21.0
PYTHON3_PKG_SETUP_DIR:=build-pip

TARGET_LDFLAGS += -lflatbuffers -lprotobuf

CMAKE_OPTIONS += \
	-Wno-dev \
	-DABSL_LIBRARIES="$(STAGING_DIR)/usr/lib" -DFLATBUFFERS_INCLUDE_DIRS="$(STAGING_DIR)/usr/include" -DFLATBUFFERS_LIBRARIES="$(STAGING_DIR)/usr/lib" -DProtobuf_INCLUDE_DIR="$(STAGING_DIR)/usr/include" -DProtobuf_LIBRARIES="$(STAGING_DIR)/usr/lib" \
	-DCMAKE_FIND_PACKAGE_PREFER_CONFIG=ON -Dabsl_DIR="$(STAGING_DIR)/usr/lib/cmake/absl" -DFlatBuffers_DIR="$(STAGING_DIR)/usr/lib/cmake/flatbuffers" -DProtobuf_DIR="$(STAGING_DIR)/usr/lib/cmake/protobuf" \
	-DCMAKE_C_FLAGS="-I$(PYTHON3_INC_DIR) -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/pybind11/include -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/include" \
	-DCMAKE_CXX_FLAGS="-I$(PYTHON3_INC_DIR) -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/pybind11/include -I$(STAGING_DIR)$(PYTHON3_PKG_DIR)/numpy/_core/include" \
	-DBUILD_SHARED_LIBS=ON \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

define Build/Compile
	$(call Build/Compile/Default)
	cd $(PKG_BUILD_DIR); \
	$(MAKE_VARS) \
	$(MAKE_FLAGS) \
	cmake --build build --target _pywrap_tensorflow_interpreter_wrapper
	$(CP) $(PKG_BUILD_DIR)/build/_pywrap_tensorflow_interpreter_wrapper.so $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install/Default)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	#$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
	#$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
endef

define Package/tensorflow-lite/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/build/libtensorflow-lite.so $(1)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/build/_deps/farmhash-build/libfarmhash.so $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tensorflow-lite))
$(eval $(call Py3Package,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite-src))
