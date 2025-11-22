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
  DEPENDS:=+python3 +python3-numpy +python3-protobuf +python3-typing-extensions +python3-ml-dtypes +python3-pillow +onnx
endef

define Package/python3-onnx/description
Open Neural Network Exchange (ONNX) is an open ecosystem that empowers AI developers to choose the right tools as their project evolves.
endef

PYTHON3_PKG_SETUP_VARS += CMAKE_ARGS="-DBUILD_SHARED_LIBS=ON -DONNX_USE_PROTOBUF_SHARED_LIBS=ON"

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
