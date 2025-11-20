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

#CMAKE_BINARY_SUBDIR := build

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Build/Prepare
	$(call Build/Prepare/Default)
	$(RM) $(STAGING_DIR)/usr/bin/protoc*
	$(CP) $(STAGING_DIR_HOSTPKG)/bin/protoc* $(STAGING_DIR)/usr/bin/
endef

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
    -DCMAKE_SKIP_RPATH=TRUE \
    -DCMAKE_VERBOSE_MAKEFILE=ON \
    -DONNX_USE_PROTOBUF_SHARED_LIBS=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_FIND_ROOT_PATH="$(CMAKE_FIND_ROOT_PATH);$(CMAKE_HOST_FIND_ROOT_PATH)" \
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
