include $(TOPDIR)/rules.mk

PKG_NAME:=opencv-python
PKG_VERSION:=5.1.0.95
PKG_RELEASE:=1

PYPI_NAME:=opencv_python
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := _skbuild/linux-aarch64-3.14/cmake-build
CMAKE_SOURCE_SUBDIR := opencv

PKG_BUILD_DEPENDS:=python-scikit-build/host numpy/host python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include ../python3-package.mk

define Package/opencv-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= Wrapper package for OpenCV python bindings.
  URL:=https://pypi.org/project/opencv-python/
  DEPENDS:=+python3 +python3-numpy
endef

define Package/opencv-python/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

CMAKE_OPTIONS += \
	-DPYTHON3_NUMPY_INCLUDE_DIRS="$(HOST_PYTHON3_PKG_DIR)/numpy/_core/include"

$(eval $(call Py3Package,opencv-python))
$(eval $(call BuildPackage,opencv-python))
$(eval $(call BuildPackage,opencv-python-src))
