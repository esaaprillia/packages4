include $(TOPDIR)/rules.mk

PKG_NAME:=python-opencv
PKG_VERSION:=4.10.0.84
PKG_RELEASE:=1

PYPI_NAME:=opencv-python
PKG_HASH:=72d234e4582e9658ffea8e9cae5b63d488ad06994ef12d81dc303b17472f3526

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-scikit-build/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-opencv
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= Wrapper package for OpenCV python bindings.
  URL:=https://pypi.org/project/opencv-python/
  DEPENDS:=+python3 +python3-numpy +libpthread +librt +libatomic +libstdcpp +zlib +libjpeg-turbo +libfreetype +libtiff +libpng +libgstreamer1 +ffmpeg
endef

define Package/python3-opencv/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

PYTHON3_PKG_BUILD_CONFIG_SETTINGS += \
	cmake.args=-Wno-dev;-DBUILD_opencv_java=OFF;-DBUILD_opencv_freetype=ON;-DBUILD_JAVA=OFF;-DBUILD_FAT_JAVA_LIB=OFF;-DWITH_OPENCL=OFF;-DWITH_CUDA=OFF;-DWITH_GTK=OFF;-DBUILD_SHARED_LIBS=ON

$(eval $(call Py3Package,python3-opencv))
$(eval $(call BuildPackage,python3-opencv))
$(eval $(call BuildPackage,python3-opencv-src))
