include $(TOPDIR)/rules.mk

PKG_NAME:=python-onnxslim
PKG_VERSION:=0.1.99
PKG_RELEASE:=1

PYPI_NAME:=onnxslim
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-onnxslim
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OnnxSlim: A Toolkit to Help Optimize Onnx Model
  URL:=https://github.com/inisis/OnnxSlim
  DEPENDS:= \
	+python3-light \
	+python3-onnx \
	+python3-sympy \
	+python3-packaging \
	+python3-colorama \
	+python3-ml-dtypes
endef

define Package/python3-onnxslim/description
OnnxSlim can help you slim your onnx model, with less operators, but same accuracy, better inference speed.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-onnxslim))
$(eval $(call BuildPackage,python3-onnxslim))
$(eval $(call BuildPackage,python3-onnxslim-src))
