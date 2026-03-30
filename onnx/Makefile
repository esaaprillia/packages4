include $(TOPDIR)/rules.mk

PKG_NAME:=onnx
PKG_VERSION:=1.21.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/onnx/onnx/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-protobuf/host python-pybind11/host python-ml-dtypes/host

PYTHON3_PKG_BUILD:=0
#CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/onnx
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Open standard for machine learning interoperability
	DEPENDS:=+libstdcpp +protobuf +abseil-cpp
	URL:=https://onnx.ai/
endef

define Package/onnx/description
	Open Neural Network Exchange (ONNX) is an open ecosystem that empowers AI developers to choose the right tools as their project evolves.
endef

define Package/python3-onnx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Open Neural Network Exchange
  URL:=https://onnx.ai/
  DEPENDS:=+python3 +onnx
endef

define Package/python3-onnx/description
Open Neural Network Exchange (ONNX) is an open ecosystem that empowers AI developers to choose the right tools as their project evolves.
endef

export CMAKE_ARGS=\
	--no-warn-unused-cli \
	-DCMAKE_SYSTEM_NAME=Linux \
	-DCMAKE_SYSTEM_VERSION=1 \
	-DCMAKE_SYSTEM_PROCESSOR=$(ARCH) \
	-DCMAKE_BUILD_TYPE=$(if $(CONFIG_DEBUG),RelWithDebInfo,Release) \
	-DCMAKE_C_FLAGS_RELEASE="-DNDEBUG" \
	-DCMAKE_CXX_FLAGS_RELEASE="-DNDEBUG" \
	-DCMAKE_C_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
	-DCMAKE_C_COMPILER="$(CMAKE_C_COMPILER)" \
	-DCMAKE_CXX_COMPILER_LAUNCHER="$(CMAKE_CXX_COMPILER_LAUNCHER)" \
	-DCMAKE_CXX_COMPILER="$(CMAKE_CXX_COMPILER)" \
	-DCMAKE_ASM_COMPILER_LAUNCHER="$(CMAKE_C_COMPILER_LAUNCHER)" \
	-DCMAKE_ASM_COMPILER="$(CMAKE_C_COMPILER)" \
	-DCMAKE_EXE_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS)" \
	-DCMAKE_MODULE_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
	-DCMAKE_SHARED_LINKER_FLAGS:STRING="$(TARGET_LDFLAGS) $(CMAKE_SHARED_LDFLAGS)" \
	-DCMAKE_AR="$(CMAKE_AR)" \
	-DCMAKE_NM="$(CMAKE_NM)" \
	-DCMAKE_RANLIB="$(CMAKE_RANLIB)" \
	-DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH)" \
	-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
	-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
	-DCMAKE_FIND_ROOT_PATH_MODE_INCLUDE=ONLY \
	-DCMAKE_STRIP=: \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DDL_LIBRARY=$(STAGING_DIR) \
	-DCMAKE_PREFIX_PATH=$(STAGING_DIR) \
	-DCMAKE_SKIP_RPATH=TRUE  \
	-DCMAKE_EXPORT_PACKAGE_REGISTRY=FALSE \
	-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY=TRUE \
	-DCMAKE_FIND_USE_PACKAGE_REGISTRY=FALSE \
	-DCMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY=TRUE \
	-DCMAKE_FIND_USE_SYSTEM_PACKAGE_REGISTRY=FALSE \
	-DCMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY=TRUE \
	-DBUILD_SHARED_LIBS=ON \
	-DONNX_USE_PROTOBUF_SHARED_LIBS=ON \
	-DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

CMAKE_OPTIONS += \
    -DBUILD_SHARED_LIBS=ON \
    -DONNX_USE_PROTOBUF_SHARED_LIBS=ON \
    -DProtobuf_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc"

PYTHON3_PKG_BUILD_PATH:=
PYTHON3_PKG_WHEEL_NAME:=onnx
PYTHON3_PKG_WHEEL_VERSION:=1.21.0

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install)
endef

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/onnx/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,onnx))
$(eval $(call Py3Package,python3-onnx))
$(eval $(call BuildPackage,python3-onnx))
$(eval $(call BuildPackage,python3-onnx-src))
