include $(TOPDIR)/rules.mk

PKG_NAME:=opencv-python
PKG_VERSION:=4.10.0.84
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/opencv/opencv-python.git
PKG_SOURCE_VERSION:=43c110551a6a9bade0a1656714e2f509f1a7f87f
PKG_MIRROR_HASH:=skip

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
  DEPENDS:=+python3 +libpthread +librt +libatomic +libstdcpp +zlib +libjpeg
endef

define Package/opencv-python3/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

PYTHON3_PKG_WHEEL_NAME:=opencv_python

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
	-DOPENCV_GENERATE_SETUPVARS=OFF"

$(eval $(call Py3Package,opencv-python3))
$(eval $(call BuildPackage,opencv-python3))
$(eval $(call BuildPackage,opencv-python3-src))
