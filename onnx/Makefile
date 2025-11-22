include $(TOPDIR)/rules.mk

PKG_NAME:=onnx
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/onnx/onnx/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-protobuf/host python-pybind11/host

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
  DEPENDS:=+python3 +python3-numpy +python3-protobuf +python3-typing-extensions +python3-ml-dtypes +python3-pillow +onnx
endef

define Package/python3-onnx/description
Open Neural Network Exchange (ONNX) is an open ecosystem that empowers AI developers to choose the right tools as their project evolves.
endef

CMAKE_OPTIONS += \
    -DBUILD_SHARED_LIBS=ON \
    -DONNX_BUILD_PYTHON=ON \
    -DONNX_USE_PROTOBUF_SHARED_LIBS=ON \
    -DONNX_PROTOC_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
    -DPython3_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
    -DPython3_INCLUDE_DIRS="$(STAGING_DIR_HOSTPKG)/include/python$(PYTHON3_VERSION)" \
    -Dpybind11_DIR="$(STAGING_DIR_HOSTPKG)/lib/python$(PYTHON3_VERSION)/site-packages/pybind11" \
    -Wno-dev

PYTHON3_PKG_BUILD_PATH:=
PYTHON3_PKG_WHEEL_NAME:=onnx
PYTHON3_PKG_WHEEL_VERSION:=1.19.1

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
