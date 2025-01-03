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
  DEPENDS:=+python3 +python3-numpy +libpthread +librt +libatomic +libstdcpp +zlib +libjpeg +libfreetype +libtiff +libpng +protobuf +libwebp +libgphoto2 +openjpeg
endef

define Package/opencv-python3/description
  OpenCV is raising funds to keep the library free for everyone, and we need the support of the entire community to do it.
endef

PYTHON3_PKG_SETUP_VARS +=CMAKE_ARGS="\
	-DBUILD_ZLIB=OFF \
	-DBUILD_TIFF=OFF \
	-DBUILD_OPENJPEG=OFF \
	-DBUILD_JASPER=OFF \
	-DBUILD_JPEG=OFF \
	-DBUILD_PNG=OFF \
	-DBUILD_OPENEXR=OFF \
	-DBUILD_WEBP=OFF \
	-DBUILD_TBB=OFF \
	-DBUILD_IPP_IW=OFF \
	-DBUILD_ITT=OFF \
	-DBUILD_JAVA=OFF \
	-DBUILD_PROTOBUF=OFF \
	-DWITH_TIFF=ON \
	-DWITH_OPENJPEG=ON \
	-DWITH_JASPER=OFF \
	-DWITH_JPEG=ON \
	-DWITH_PNG=ON \
	-DWITH_OPENEXR=OFF \
	-DWITH_WEBP=ON \
	-DWITH_TBB=OFF \
	-DWITH_IPP=OFF \
	-DWITH_ITT=OFF \
	-DWITH_GTK=OFF \
	-DWITH_PROTOBUF=ON \
	-DWITH_VA=OFF \
	-DWITH_VA_INTEL=OFF \
	-DWITH_VTK=OFF \
	-DWITH_GPHOTO2=ON \
	-DJPEG_LIBRARY=$(STAGING_DIR)/usr/lib"

$(eval $(call Py3Package,opencv-python3))
$(eval $(call BuildPackage,opencv-python3))
$(eval $(call BuildPackage,opencv-python3-src))
