include $(TOPDIR)/rules.mk

PKG_NAME:=opencv-python
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

define Package/opencv-python3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= Wrapper package for OpenCV python bindings.
  URL:=https://pypi.org/project/opencv-python/
  DEPENDS:=+python3 +python3-numpy +libpthread +librt +libatomic +libstdcpp +zlib +libjpeg +libfreetype +libtiff +libpng +protobuf +libwebp +openjpeg
endef

define Package/opencv-python3/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

PYTHON3_PKG_SETUP_VARS +=CMAKE_ARGS="\
	-DWITH_opencv_java=OFF \
	-DWITH_opencv_stitching=OFF \
	-DWITH_opencv_superres=OFF \
	-DWITH_opencv_ts=OFF \
	-DWITH_opencv_highgui=OFF \
	-DWITH_opencv_videostab=OFF \
	-DWITH_opencv_gapi=OFF \
	-DBUILD_JAVA=OFF \
	-DBUILD_TESTS=OFF \
	-DBUILD_PERF_TESTS=OFF \
	-DBUILD_EXAMPLES=OFF \
	-DINSTALL_C_EXAMPLES=OFF \
	-DINSTALL_PYTHON_EXAMPLES=OFF \
	-DWITH_1394=OFF \
	-DWITH_ADE=OFF \
	-DWITH_IPP=OFF \
	-DWITH_FFMPEG=OFF \
	-DWITH_GSTREAMER=OFF \
	-DWITH_PNG=OFF \
	-DWITH_GTK=OFF \
	-DWITH_TIFF=OFF \
	-DENABLE_PRECOMPILED_HEADERS=OFF \
	-DOPENCV_SKIP_PYTHON_LOADER=OFF \
	-DOPENCV_ENABLE_NONFREE=OFF \
	-DOPENCV_GENERATE_SETUPVARS=OFF" \
	-DOPENCV_PYTHON3_INSTALL_PATH=$(PYTHON3_PKG_DIR)

$(eval $(call Py3Package,opencv-python3))
$(eval $(call BuildPackage,opencv-python3))
$(eval $(call BuildPackage,opencv-python3-src))
