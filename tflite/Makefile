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

PKG_BUILD_DEPENDS:=flatbuffers/host protobuf-protoc/host
PKG_BUILD_DIR:=$(BUILD_DIR)/LiteRT-$(PKG_VERSION)

#CMAKE_BINARY_SUBDIR:=build
CMAKE_SOURCE_SUBDIR:=tflite

PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

PYTHON3_PKG_WHEEL_NAME:=tflite_runtime
PYTHON3_PKG_WHEEL_VERSION:=2.2.0
PYTHON3_PKG_SETUP_DIR:=build-pip

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

define Package/python3-tflite
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Python bindings tflite
	DEPENDS:=+libjpeg-turbo +zlib +tflite
	URL:=https://github.com/google-ai-edge/LiteRT
endef

define Package/python3-tflite/description
	Python bindings tflite
endef

PYTHON3_PKG_SETUP_VARS += PROJECT_NAME=tflite_runtime PACKAGE_VERSION="$(PKG_VERSION)"

define Build/Prepare
	$(call Build/Prepare/Default)
	mkdir -p $(PKG_BUILD_DIR)/build-pip/tflite_runtime
	$(CP) $(PKG_BUILD_DIR)/tflite/tools/pip_package/setup_with_binary.py $(PKG_BUILD_DIR)/build-pip/setup.py
	$(CP) $(PKG_BUILD_DIR)/tflite/tools/pip_package/MANIFEST.in $(PKG_BUILD_DIR)/build-pip/
	$(CP) $(PKG_BUILD_DIR)/tflite/python/interpreter_wrapper $(PKG_BUILD_DIR)/build-pip/
	$(CP) $(PKG_BUILD_DIR)/tflite/python/interpreter.py $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	$(CP) $(PKG_BUILD_DIR)/tflite/python/metrics/{metrics_interface.py,metrics_portable.py} $(PKG_BUILD_DIR)/build-pip/tflite_runtime/
	echo "__version__ = '$(PKG_VERSION)'" >> $(PKG_BUILD_DIR)/build-pip/tflite_runtime/__init__.py
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DBUILD_DOC=OFF \
	-DBUILD_DOCS=OFF \
	-DBUILD_EXAMPLE=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DBUILD_TEST=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_TESTING=OFF \
	-DTFLITE_HOST_TOOLS_DIR="$(STAGING_DIR_HOSTPKG)/bin"

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

define Package/tflite/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,tflite))
$(eval $(call Py3Package,python3-tflite))
$(eval $(call BuildPackage,python3-tflite))
$(eval $(call BuildPackage,python3-tflite-src))
