#
# Copyright (C) 2013-2014 wrtnode.com
# Copyright (C) 2015-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=opencv
PKG_VERSION:=4.10.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/opencv/opencv/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=openjpeg/host numpy/host

CMAKE_INSTALL:=1
CMAKE_BINARY_SUBDIR:=build
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0
#PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/opencv/Default/description
 OpenCV (Open Source Computer Vision Library) is an open source computer
 vision and machine learning software library. OpenCV was built to provide
 a common infrastructure for computer vision applications and to accelerate
 the use of machine perception in the commercial products. Being a
 BSD-licensed product, OpenCV makes it easy for businesses to utilize
 and modify the code.
endef

define Package/opencv
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=OpenCV
  URL:=https://opencv.org/
  DEPENDS:=+python3 +python3-numpy +libpthread +librt +libatomic +libstdcpp +zlib +libjpeg +libfreetype +libtiff +libpng +protobuf +libwebp +libgphoto2 +openjpeg
endef

CMAKE_OPTIONS += \
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
	-DWITH_ADE=OFF \
	-DWITH_PROTOBUF=ON \
	-DWITH_VA=OFF \
	-DWITH_VA_INTEL=OFF \
	-DWITH_VTK=OFF \
	-DWITH_GPHOTO2=ON \
	-DPYTHON_VERSION_STRING:STRING=3.13.1 \
	-DPYTHON_EXECUTABLE:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/bin/python3.13 \
	-DPYTHON_INCLUDE_DIR:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/include/python3.13 \
	-DPython_EXECUTABLE:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/bin/python3.13 \
	-DPython_ROOT_DIR:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg \
	-DPython_FIND_REGISTRY:STRING=NEVER \
	-DPython_INCLUDE_DIR:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/include/python3.13 \
	-DPython_NumPy_INCLUDE_DIRS:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/lib/python3.13/site-packages/numpy/_core/include \
	-DPython3_EXECUTABLE:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/bin/python3.13 \
	-DPython3_ROOT_DIR:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg \
	-DPython3_FIND_REGISTRY:STRING=NEVER \
	-DPython3_INCLUDE_DIR:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/include/python3.13 \
	-DPython3_NumPy_INCLUDE_DIRS:PATH=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/lib/python3.13/site-packages/numpy/_core/include \
	-DPYTHON3_EXECUTABLE=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/bin/python3.13 \
	-DPYTHON_DEFAULT_EXECUTABLE=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/bin/python3.13 \
	-DPYTHON3_INCLUDE_DIR=/home/runner/work/mosdns/mosdns/sdk/staging_dir/hostpkg/include/python3.13 \
	-DPYTHON3_LIBRARY=libpython3.13m.a

TARGET_LDFLAGS += -latomic

#PYTHON3_PKG_BUILD_PATH:=modules/python/package

define Package/opencv/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libopencv* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,opencv))
