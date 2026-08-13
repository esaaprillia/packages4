include $(TOPDIR)/rules.mk

PKG_NAME:=onnxruntime
PKG_VERSION:=1.29.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/microsoft/onnxruntime/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build
CMAKE_SOURCE_SUBDIR:= cmake

PKG_BUILD_DEPENDS:=nlohmannjson icu boost googletest/host protobuf/host python-pybind11 numpy/host python-nanobind/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

PYTHON3_PKG_SETUP_DIR:= build

define Build/Prepare
	$(call Build/Prepare/Default)
	#$(RM) $(STAGING_DIR)/usr/bin/flatc*
	#$(CP) $(STAGING_DIR_HOSTPKG)/bin/flatc* $(STAGING_DIR)/usr/bin/
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
endef

define Package/onnxruntime
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=ONNX Runtime is a cross-platform inference and training machine-learning accelerator.
	DEPENDS:=+libstdcpp +abseil-cpp +protobuf +re2 +zlib $(ICONV_DEPENDS)
	URL:=https://onnxruntime.ai/
endef

define Package/onnxruntime/description
	ONNX Runtime inference can enable faster customer experiences and lower costs, supporting models from deep learning frameworks such as PyTorch and TensorFlow/Keras as well as classical machine learning libraries such as scikit-learn, LightGBM, XGBoost, etc. ONNX Runtime is compatible with different hardware, drivers, and operating systems, and provides optimal performance by leveraging hardware accelerators where applicable alongside graph optimizations and transforms.
endef

define Package/python3-onnxruntime
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=onnxruntime (python3 bindings)
  URL:=https://onnxruntime.ai/
  DEPENDS:=+python3-light +python3-coloredlogs +python3-flatbuffers +python3-numpy +python3-packaging +python3-sympy +onnxruntime
endef

define Package/python3-onnxruntime/description
	ONNX Runtime is a performance-focused scoring engine for Open Neural Network Exchange (ONNX) models.
endef

TARGET_CXXFLAGS +=-Wno-error=unused-variable

CMAKE_OPTIONS += \
	-DONNX_BUILD_PYTHON=ON \
	-Donnxruntime_BUILD_SHARED_LIB=ON \
	-Donnxruntime_BUILD_UNIT_TESTS=OFF \
	-Donnxruntime_ENABLE_PYTHON=ON \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)" \
	-DONNX_CUSTOM_PROTOC_EXECUTABLE="$(STAGING_DIR)/usr/bin/protoc"

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libonnxruntime.pc
endef

define Package/onnxruntime/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,onnxruntime))
$(eval $(call Py3Package,python3-onnxruntime))
$(eval $(call BuildPackage,python3-onnxruntime))
$(eval $(call BuildPackage,python3-onnxruntime-src))
