include $(TOPDIR)/rules.mk

PKG_NAME:=tensorflow-lite
PKG_VERSION:=2.18.0
PKG_RELEASE:=1

PKG_SOURCE:=tensorflow-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/tensorflow/tensorflow/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/tensorflow-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=protobuf/host flatbuffers/host googletest/host eigen fft2d ruy fp16 python-ml-dtypes/host python-pybind11/host

CMAKE_INSTALL:=1
CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tensorflow/lite

PYTHON3_PKG_BUILD:=0
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/tensorflow-lite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An Open Source Machine Learning Framework for Everyone
	DEPENDS:=+libstdcpp +protobuf +flatbuffers +re2 +googletest +farmhash +pthreadpool +cpuinfo +gemmlowp +python3-ml-dtypes +xnnpack
	URL:=https://tensorflow.org/
endef

define Package/tensorflow-lite/description
	TensorFlow Lite is TensorFlow's lightweight solution for mobile and embedded devices. It enables low-latency inference of on-device machine learning models with a small binary size and fast performance supporting hardware acceleration.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(RM) $(STAGING_DIR)/usr/bin/flatc
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/flatc $(STAGING_DIR)/usr/bin/
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DTFLITE_ENABLE_INSTALL=ON \
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
	-DTFLITE_ENABLE_XNNPACK=ON \
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
	-DML_DTYPES_SOURCE_DIR="$(STAGING_DIR)/usr/lib/python$(PYTHON3_VERSION)/site-packages/ml_dtypes/include"

define Package/tensorflow-lite/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tensorflow-lite))
