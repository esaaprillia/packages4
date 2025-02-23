include $(TOPDIR)/rules.mk

PKG_NAME:=tensorflow-lite
PKG_VERSION:=2.18.0
PKG_RELEASE:=2

PKG_SOURCE:=tensorflow-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/tensorflow/tensorflow/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/tensorflow-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=protobuf/host flatbuffers/host googletest/host swig/host python-pybind11/host numpy/host eigen fft2d ruy fp16 fxdiv

CMAKE_INSTALL:=1
CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tensorflow/lite

PYTHON3_PKG_BUILD:=0
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

export PROJECT_NAME=tflite_runtime
export PACKAGE_VERSION="$(PKG_VERSION)"

PYTHON3_PKG_WHEEL_NAME:=tflite_runtime
PYTHON3_PKG_WHEEL_VERSION:=2.18.0
PYTHON3_PKG_SETUP_DIR:=build-pip

define Package/tensorflow-lite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An Open Source Machine Learning Framework for Everyone
	DEPENDS:=+libstdcpp +protobuf +flatbuffers +re2 +googletest +farmhash +pthreadpool +cpuinfo +gemmlowp +libjpeg-turbo +zlib
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
	DEPENDS:=+python3-light +python3-numpy +tensorflow-lite
	URL:=https://www.tensorflow.org/lite/
endef

define Package/python3-tensorflow-lite/description
	Python bindings tensorflow-lite
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p "$(PKG_BUILD_DIR)/build-pip/tflite_runtime"
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/tools/pip_package/setup_with_binary.py $(PKG_BUILD_DIR)/build-pip/setup.py
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/python/interpreter.py $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	$(CP) $(PKG_BUILD_DIR)/tensorflow/lite/python/metrics/{metrics_interface.py,metrics_portable.py} $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	echo "__version__ = '$(PKG_VERSION)'" > "$(PKG_BUILD_DIR)/build-pip/tflite_runtime/__init__.py"
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(RM) $(STAGING_DIR)/usr/bin/flatc
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/flatc $(STAGING_DIR)/usr/bin/
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DTFLITE_ENABLE_INSTALL=ON \
	-DTFLITE_ENABLE_EXTERNAL_DELEGATE=ON \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR)/usr/bin" \
	-DTFLITE_ENABLE_GPU=OFF \
	-DCMAKE_FIND_PACKAGE_PREFER_CONFIG=ON \
	-DBUILD_DOC=OFF \
	-DBUILD_DOCS=OFF \
	-DBUILD_EXAMPLE=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_TESTING=OFF \
	-DSYSTEM_FARMHASH=ON \
	-DSYSTEM_PTHREADPOOL=ON \
	-DXNNPACK_USE_SYSTEM_LIBS=ON \
	-DTFLITE_ENABLE_XNNPACK=OFF \
	-DFFT2D_SOURCE_DIR="$(STAGING_DIR)/usr/include/fft2d" \
	-Dabsl_DIR="$(STAGING_DIR)/usr/lib/cmake/absl" \
	-DEigen3_DIR="$(STAGING_DIR)/usr/share/eigen3/cmake" \
	-DFlatBuffers_DIR="$(STAGING_DIR)/usr/lib/cmake/flatbuffers" \
	-DProtobuf_DIR="$(STAGING_DIR)/usr/lib/cmake/protobuf" \
	-Dgemmlowp_DIR="$(STAGING_DIR)/usr/lib/cmake/gemmlowp" \
	-Dcpuinfo_DIR="$(STAGING_DIR)/usr/share/cpuinfo" \
	-Druy_DIR="$(STAGING_DIR)/usr/lib/cmake/ruy" \
	-Dre2_DIR="$(STAGING_DIR)/usr/lib/cmake/re2" \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR)/usr/bin/protoc" \
	-DFLATBUFFERS_FLATC_EXECUTABLE="$(STAGING_DIR)/usr/bin/flatc" \
	-DPTHREADPOOL_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-DFP16_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-DXNNPACK_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-Deigen_SOURCE_DIR="$(STAGING_DIR)/usr/include/eigen3" \
	-DML_DTYPES_SOURCE_DIR="$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION)/site-packages/ml_dtypes/include"

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/tensorflow \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,*.so*} \
	  $(1)/usr/lib/
endef

define Package/tensorflow-lite/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tensorflow-lite))
$(eval $(call Py3Package,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite))
$(eval $(call BuildPackage,python3-tensorflow-lite-src))
