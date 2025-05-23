include $(TOPDIR)/rules.mk

PKG_NAME:=xnnpack
PKG_VERSION:=2024-09-18
PKG_RELEASE:=2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/google/XNNPACK.git
PKG_SOURCE_VERSION:=6b83f69d4938da4dc9ad63c00bd13e9695659a51
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=fxdiv fp16
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/xnnpack
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=High-efficiency floating-point neural network inference operators for mobile, server, and Web
	DEPENDS:=+libstdcpp +cpuinfo +pthreadpool
	URL:=https://github.com/google/XNNPACK
endef

define Package/xnnpack/description
XNNPACK is a highly optimized solution for neural network inference on ARM, x86, WebAssembly, and RISC-V platforms. XNNPACK is not intended for direct use by deep learning practitioners and researchers; instead it provides low-level performance primitives for accelerating high-level machine learning frameworks, such as TensorFlow Lite, TensorFlow.js, PyTorch, ONNX Runtime, and MediaPipe.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-DCMAKE_POSITION_INDEPENDENT_CODE=ON \
	-DCMAKE_C_FLAGS=-fPIC \
	-DCMAKE_CXX_FLAGS=-fPIC \
	-DXNNPACK_BUILD_BENCHMARKS=OFF \
	-DXNNPACK_BUILD_LIBRARY=ON \
	-DXNNPACK_BUILD_TESTS=OFF \
	-DXNNPACK_ENABLE_KLEIDIAI=OFF \
	-DXNNPACK_USE_SYSTEM_LIBS=ON \
	-DXNNPACK_LIBRARY_TYPE=shared

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/xnnpack/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,xnnpack))
