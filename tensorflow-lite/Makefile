include $(TOPDIR)/rules.mk

PKG_NAME:=tensorflow-lite
PKG_VERSION:=2.21.0
PKG_RELEASE:=1

PKG_SOURCE:=tensorflow-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/tensorflow/tensorflow/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/tensorflow-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=eigen benchmark protobuf/host flatbuffers/host swig/host python-pybind11/host numpy/host python-pybind11

CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tensorflow/lite

PYTHON3_PKG_BUILD:=0
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

PYTHON3_PKG_WHEEL_NAME:=tflite_runtime
PYTHON3_PKG_WHEEL_VERSION:=2.21.0
PYTHON3_PKG_SETUP_DIR:=build-pip

define Package/tensorflow-lite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An Open Source Machine Learning Framework for Everyone
	DEPENDS:=+libstdcpp +protobuf +re2 +abseil-cpp
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
	DEPENDS:=+python3-light +libjpeg-turbo +zlib +tensorflow-lite
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

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DTFLITE_ENABLE_INSTALL=ON \
	-DTFLITE_ENABLE_EXTERNAL_DELEGATE=ON \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DCMAKE_FIND_PACKAGE_PREFER_CONFIG=ON \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	-DBUILD_DOC=OFF \
	-DBUILD_DOCS=OFF \
	-DBUILD_EXAMPLE=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_TESTING=OFF \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)"

define Build/Compile
	$(call Build/Compile/Default)
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
endef

$(eval $(call BuildPackage,tensorflow-lite))
$(eval $(call Py3Package,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite-src))
