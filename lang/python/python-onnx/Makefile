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
include $(INCLUDE_DIR)/host-build.mk
include ../meson/cmake.mk
include ../python3-package.mk
include ../python3-host-build.mk

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

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-onnx))
$(eval $(call BuildPackage,python3-onnx))
$(eval $(call BuildPackage,python3-onnx-src))
