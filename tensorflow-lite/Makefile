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

PKG_BUILD_DEPENDS:=protobuf/host flatbuffers/host eigen fft2d ruy fp16 fxdiv ml-dtypes

CMAKE_INSTALL:=1
CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tensorflow/lite

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/tensorflow-lite
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=An Open Source Machine Learning Framework for Everyone
	DEPENDS:=+libstdcpp +protobuf +flatbuffers +re2 +abseil-cpp +farmhash +pthreadpool +cpuinfo +gemmlowp +xnnpack
	URL:=https://tensorflow.org/
endef

define Package/tensorflow-lite/description
	TensorFlow Lite is TensorFlow's lightweight solution for mobile and embedded devices. It enables low-latency inference of on-device machine learning models with a small binary size and fast performance supporting hardware acceleration.
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_SHARED_LIBS=ON \
	-DTFLITE_ENABLE_INSTALL=ON \
	-DTFLITE_ENABLE_EXTERNAL_DELEGATE=ON \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin" \
	-DTFLITE_ENABLE_GPU=OFF \
	-DTFLITE_ENABLE_MMAP=ON \
	-DTFLITE_ENABLE_NNAPI=OFF \
	-DCMAKE_FIND_PACKAGE_PREFER_CONFIG=ON \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	-DBUILD_DOC=OFF \
	-DBUILD_DOCS=OFF \
	-DBUILD_EXAMPLE=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_TESTING=OFF \
	-DSYSTEM_FARMHASH=ON \
	-DSYSTEM_PTHREADPOOL=ON \
	-DTFLITE_ENABLE_XNNPACK=OFF \
	-DPTHREADPOOL_LIB="-L$(STAGING_DIR)/usr/lib -lpthreadpool" \
	-DFFT2D_SOURCE_DIR="$(STAGING_DIR)/usr/include/fft2d" \
	-DML_DTYPES_SOURCE_DIR="$(STAGING_DIR)/usr/include/ml_dtypes/include" \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	-DPTHREADPOOL_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-DFP16_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-DXNNPACK_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-DCPUINFO_SOURCE_DIR="$(STAGING_DIR)/usr/include" \
	-Dfp16_headers_SOURCE_DIR="$(STAGING_DIR)/usr/include"

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
