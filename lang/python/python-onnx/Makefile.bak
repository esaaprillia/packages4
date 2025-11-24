include $(TOPDIR)/rules.mk

PKG_NAME:=python-onnx
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PYPI_NAME:=onnx
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=numpy/host python-protobuf/host python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

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

PYTHON3_PKG_SETUP_VARS += CMAKE_ARGS=" --no-warn-unused-cli -DONNX_USE_PROTOBUF_SHARED_LIBS=ON -DBUILD_SHARED_LIBS=ON -DProtobuf_PROTOC_EXECUTABLE=$(STAGING_DIR_HOSTPKG)/bin/protoc -DProtobuf_LIBRARY=$(STAGING_DIR)/usr/lib/libprotobuf.so -DProtobuf_INCLUDE_DIR:PATH=$(STAGING_DIR)/usr/include -DCMAKE_CXX_STANDARD=17 -DNPY_TARGET_VERSION=NPY_1_19_API_VERSION -DPYBIND11_FINDPYTHON=ON -DPython_EXECUTABLE=$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3) -DPython3_EXECUTABLE=$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

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
